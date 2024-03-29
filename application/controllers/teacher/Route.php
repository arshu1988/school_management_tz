<?php  ?><?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Route extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->lang->load('message', 'english');
        $this->load->library('auth');
        $this->auth->is_logged_in_teacher();
    }

    public function index() {
        $this->session->set_userdata('top_menu', 'Transport');
        $this->session->set_userdata('sub_menu', 'route/index');
        $listroute = $this->route_model->listroute();
        $data['listroute'] = $listroute;
        $this->load->view('layout/teacher/header');
        $this->load->view('teacher/route/createroute', $data);
        $this->load->view('layout/teacher/footer');
    }

    function create() {
        $data['title'] = 'Add Route';
        $this->form_validation->set_rules('route_title', 'Route Title', 'required');
        if ($this->form_validation->run() == FALSE) {
            $listroute = $this->route_model->listroute();
            $data['listroute'] = $listroute;
            $this->load->view('layout/teacher/header');
            $this->load->view('teacher/route/createroute', $data);
            $this->load->view('layout/teacher/footer');
        } else {
            $data = array(
                'route_title' => $this->input->post('route_title'),
                'no_of_vehicle' => $this->input->post('no_of_vehicle'),
                'fare' => $this->input->post('fare')
            );
            $this->route_model->add($data);
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">Route added successfully</div>');
            redirect('teacher/route/index');
        }
    }

    function edit($id) {
        $data['title'] = 'Add Route';
        $data['id'] = $id;
        $editroute = $this->route_model->get($id);
        $data['editroute'] = $editroute;
        $this->form_validation->set_rules('route_title', 'Route Title', 'required');
        if ($this->form_validation->run() == FALSE) {
            $listroute = $this->route_model->listroute();
            $data['listroute'] = $listroute;
            $this->load->view('layout/teacher/header');
            $this->load->view('teacher/route/editroute', $data);
            $this->load->view('layout/teacher/footer');
        } else {
            $data = array(
                'id' => $this->input->post('id'),
                'route_title' => $this->input->post('route_title'),
                'no_of_vehicle' => $this->input->post('no_of_vehicle'),
                'fare' => $this->input->post('fare')
            );
            $this->route_model->add($data);
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">Transport updated successfully</div>');
            redirect('teacher/route/index');
        }
    }

    function delete($id) {
        $data['title'] = 'Fees Master List';
        $this->route_model->remove($id);
        redirect('teacher/route/index');
    }

}

?>