<?php  ?><?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class site extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->check_installation();
        if ($this->config->item('installed') == true) {
            $this->db->reconnect();
        }
        $this->load->library('Auth');
        $this->load->helper('file');
        $this->lang->load('message', 'english');
    }

    private function check_installation() {
        if ($this->uri->segment(1) !== 'install') {
            $this->load->config('migration');
            if ($this->config->item('installed') == false && $this->config->item('migration_enabled') == false) {
                redirect(base_url() . 'install/start');
            } else {
                if (is_dir(APPPATH . 'controllers/install')) {
                    echo '<h3>Delete the install folder from application/controllers/install</h3>';
                    die;
                }
            }
        }
    }

    function login() {
	
		
        $data['title'] = 'Login';
        $this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean');
        $this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('admin/login', $data);
        } else {
            $data = array(
                'username' => $this->input->post('username'),
                'password' => $this->input->post('password')
                );
            $result = $this->admin_model->checkLogin($data);
            if ($result == TRUE) {
                $username = $this->input->post('username');
                $result = $this->admin_model->read_user_information($username);
                if ($result != false) {
                    $setting_result = $this->setting_model->get();
                    $session_data = array(
                        'id' => $result[0]->id,
                        'username' => $result[0]->username,
                        'email' => $result[0]->email,
                        'date_format' => $setting_result[0]['date_format'],
                        'currency_symbol' => $setting_result[0]['currency_symbol'],
                        'start_month' => $setting_result[0]['start_month'],
                        'school_name' => $setting_result[0]['name'],
                        'language' => array('lang_id' => $setting_result[0]['lang_id'], 'language' => $setting_result[0]['language']),
                        'is_rtl'=> $setting_result[0]['is_rtl'],
                        );
                    $this->session->set_userdata('admin', $session_data);
                    redirect('admin/admin/dashboard');
                }
            } else {
                $data = array(
                    'error_message' => 'Invalid Username or Password'
                    );
                $this->load->view('admin/login', $data);
            }
        }
    }

    function logout() {
        $admin_session = $this->session->userdata('admin');
        $student_session = $this->session->userdata('student');
        $this->auth->logout();
        if ($admin_session) {
            redirect('site/login');
        } else if ($student_session) {
            redirect('site/userlogin');
        }        
    }

    function userlogin() {        
        $data['title'] = 'Login';
        $this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean');
        $this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('userlogin', $data);
        } else {
            $data = array(
                'username' => $this->input->post('username'),
                'password' => $this->input->post('password')
                );
            $result = $this->user_model->checkLogin($data);
            if ($result == TRUE) {
                $username = $this->input->post('username');
                if ($result[0]->role == "student") {
                    $result = $this->user_model->read_user_information($username);
                } else if ($result[0]->role == "parent") {
                    $result = $this->user_model->read_user_information($username);
                } else if ($result[0]->role == "teacher") {
                    $result = $this->user_model->read_teacher_information($username);
                }
                if ($result != false) {
                    $setting_result = $this->setting_model->get();
                    if ($result[0]->role == "student") {
                        $session_data = array(
                            'id' => $result[0]->id,
                            'student_id' => $result[0]->user_id,
                            'role' => $result[0]->role,
                            'username' => $result[0]->firstname . " " . $result[0]->lastname,
                            'date_format' => $setting_result[0]['date_format'],
                            'currency_symbol' => $setting_result[0]['currency_symbol'],
                            'language' => array('lang_id' => $setting_result[0]['lang_id'], 'language' => $setting_result[0]['language']),
                            'is_rtl'=> $setting_result[0]['is_rtl'],
                            );
                        $this->session->set_userdata('student', $session_data);
                        redirect('user/user/dashboard');
                    } else if ($result[0]->role == "parent") {
                        $session_data = array(
                            'id' => $result[0]->id,
                            'student_id' => $result[0]->user_id,
                            'role' => $result[0]->role,
                            'username' => $result[0]->guardian_name,
                            'date_format' => $setting_result[0]['date_format'],
                            'currency_symbol' => $setting_result[0]['currency_symbol'],
                            'language' => array('lang_id' => $setting_result[0]['lang_id'], 'language' => $setting_result[0]['language']),
                            'is_rtl'=> $setting_result[0]['is_rtl'],
                            );
                        $this->session->set_userdata('student', $session_data);
                        $s = array();
                        $childs_ids = ($result[0]->childs);
                        $students_array = $this->student_model->read_siblings_students($childs_ids);
                        foreach ($students_array as $key => $each) {
                            $d = array(
                                'student_id' => $each['id'],
                                'name' => $each['firstname'] . " " . $each['lastname']
                                );
                            $s[] = $d;
                        }
                        $this->session->set_userdata('parent_childs', $s);
                        redirect('parent/parents/dashboard');
                    } else if ($result[0]->role == "teacher") {
                        $session_data = array(
                            'id' => $result[0]->id,
                            'teacher_id' => $result[0]->user_id,
                            'role' => $result[0]->role,
                            'username' => $result[0]->name,
                            'date_format' => $setting_result[0]['date_format'],
                            'currency_symbol' => $setting_result[0]['currency_symbol'],
                            'language' => array('lang_id' => $setting_result[0]['lang_id'], 'language' => $setting_result[0]['language']),
                            'is_rtl'=> $setting_result[0]['is_rtl'],
                            );
                        $this->session->set_userdata('student', $session_data);
                        redirect('teacher/teacher/dashboard');
                    }
                } else {
                    $data = array(
                        'error_message' => 'Account Suspended'
                        );
                    $this->load->view('userlogin', $data);
                }
            } else {
                $data = array(
                    'error_message' => 'Invalid Username or Password'
                    );
                $this->load->view('userlogin', $data);
            }
        }
    }

}

?>