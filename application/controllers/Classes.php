<?php  ?><?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class classes extends Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->load->helper('file');
        $this->lang->load('message', 'english');
    }

    function index() {
        $this->session->set_userdata('top_menu', 'Academics');
        $this->session->set_userdata('sub_menu', 'classes/index');
        $data['title'] = 'Add Class';
        $data['title_list'] = 'Class List';
        $this->form_validation->set_rules('class', 'Class', 'trim|required|xss_clean|callback__check_name_exists');
        if ($this->form_validation->run() == FALSE) {            
        } else {
            $data = array(
                'class' => $this->input->post('class'),
            );
            $this->class_model->add($data);
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">Class added successfully</div>');
            redirect('classes'); 
        }
        $class_result = $this->class_model->get();
        $data['classlist'] = $class_result;
        $this->load->view('layout/header', $data);
        $this->load->view('class/classList', $data);
        $this->load->view('layout/footer', $data);
    }

    function view($id) {
        $data['title'] = 'Class List';
        $class = $this->class_model->get($id);
        $data['class'] = $class;
        $this->load->view('layout/header', $data);
        $this->load->view('class/classShow', $data);
        $this->load->view('layout/footer', $data);
    }

    function delete($id) {
        $data['title'] = 'Class List';
        $this->class_model->remove($id);
        redirect('classes/index');
    }

    function deletesection($id) {
        $data['title'] = 'Class List';
        $this->classsection_model->remove($id);
        redirect($_SERVER['HTTP_REFERER']);
    }

    function create() {
        $data['title'] = 'Add Class';
        $this->form_validation->set_rules('class', 'Class', 'trim|required|xss_clean|callback__check_name_exists');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('layout/header', $data);
            $this->load->view('class/classCreate', $data);
            $this->load->view('layout/footer', $data);
        } else {
            $data = array(
                'class' => $this->input->post('class'),
            );
            $this->class_model->add($data);
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">Class  added successfully</div>');
            redirect('classes/index');
        }
    }

    function _check_name_exists() {
        $data['class'] = $this->security->xss_clean($this->input->post('class'));
        if ($this->input->post('id') == true) {
            $data['id'] = $this->input->post('id');
        } else {
            $data['id'] = 0;
        }
        if ($this->class_model->check_data_exists($data)) {
            $this->form_validation->set_message('_check_name_exists', 'Record already exists');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function _check_section_exists() {
        $data['section_id'] = $this->security->xss_clean($this->input->post('section_id'));
        if ($this->input->post('id') == true) {
            $data['class_id'] = $this->input->post('id');
        } else {
            $data['class_id'] = 0;
        }
        if ($this->classsection_model->check_data_exists($data)) {
            $this->form_validation->set_message('_check_section_exists', 'Record already exists');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    function edit($id) {
        $data['title'] = 'Edit Class';
        $data['id'] = $id;
        $class = $this->class_model->get($id);
        $data['class'] = $class;
        $data['title_list'] = 'Class List';
        $this->form_validation->set_rules('class', 'Class', 'trim|required|xss_clean|callback__check_name_exists');
        if ($this->form_validation->run() == FALSE) {
        } else {
            $data = array(
                'id' => $this->input->post('id'),
                'class' => $this->input->post('class'),
            );
            $this->class_model->add($data);
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">Class update successfully</div>');
            redirect('classes'); 
        }
        $class_result = $this->class_model->get();
        $data['classlist'] = $class_result;
        $this->load->view('layout/header', $data);
        $this->load->view('class/classEdit', $data);
        $this->load->view('layout/footer', $data);
    }

    function addsection($id) {
        $data['id'] = $id;
        $class = $this->class_model->get($id);
        $sectionlist = $this->section_model->get();
        $classSectionlist = $this->classsection_model->get($id);
        $data['title_list'] = $class['class'];
        $data['title'] =$class['class'];
        $data['class'] = $class;
        $data['sectionlist'] = $sectionlist;
        $data['classSectionlist'] = $classSectionlist;
        $this->form_validation->set_rules('section_id', 'Section', 'trim|required|xss_clean|callback__check_section_exists');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('layout/header', $data);
            $this->load->view('class/sectionAdd', $data);
            $this->load->view('layout/footer', $data);
        } else {
            $data = array(
                'class_id' => $id,
                'section_id' => $this->input->post('section_id'),
            );
            $this->classsection_model->add($data);
            $this->session->set_flashdata('msg', '<div class="alert alert-success">Section added successfully</div>');
            redirect('classes/addsection/' . $id);
        }
    }

}

?>