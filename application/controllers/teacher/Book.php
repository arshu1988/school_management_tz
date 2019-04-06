<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Book extends CI_Controller {

    function __construct() {
        parent::__construct();

        $this->load->helper('file');
        $this->lang->load('message', 'english');
        $this->load->library('auth');
        $this->auth->is_logged_in_teacher();
    }

    public function index() {
        $this->session->set_userdata('top_menu', 'Library');
        $this->session->set_userdata('sub_menu', 'book/index');
        $data['title'] = 'Add Book';
        $data['title_list'] = 'Book Details';
        $listbook = $this->book_model->listbook();
        $data['listbook'] = $listbook;

        $this->load->view('layout/teacher/header');
        $this->load->view('teacher/book/createbook', $data);
        $this->load->view('layout/teacher/footer');
    }

    public function getall() {
        $this->session->set_userdata('top_menu', 'Library');
        $this->session->set_userdata('sub_menu', 'book/getall');
        $data['title'] = 'Add Book';
        $data['title_list'] = 'Book Details';
        $listbook = $this->book_model->get();
        $data['listbook'] = $listbook;

        $this->load->view('layout/teacher/header');
        $this->load->view('teacher/book/getall', $data);
        $this->load->view('layout/teacher/footer');
    }

//    public function createbook(){
//        redirect('admin/book/index');
//        
//    }
    function create() {
        //fetch data from department and designation tables
        $data['title'] = 'Add Book';
        $data['title_list'] = 'Book Details';

        //set validation rules
        $this->form_validation->set_rules('book_title', 'Book Title', 'trim|required|xss_clean');



        if ($this->form_validation->run() == FALSE) {
            $listbook = $this->book_model->listbook();
            $data['listbook'] = $listbook;
            $this->load->view('layout/teacher/header');
            $this->load->view('teacher/book/createbook', $data);
            $this->load->view('layout/teacher/footer');
        } else {
            //pass validation
            $data = array(
                'book_title' => $this->input->post('book_title'),
                'subject' => $this->input->post('subject'),
                'rack_no' => $this->input->post('rack_no'),
                'publish' => $this->input->post('publish'),
                'author' => $this->input->post('author'),
                'qty' => $this->input->post('qty'),
                'perunitcost' => $this->input->post('perunitcost'),
                'postdate' => date('Y-m-d', $this->customlib->datetostrtotime($this->input->post('postdate'))),
                'description' => $this->input->post('description')
            );



            $this->book_model->addbooks($data);

            //display success message
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">Book added successfully</div>');
            redirect('teacher/book/index');
        }
    }

    function edit($id) {
        //fetch data from department and designation tables
        $data['title'] = 'Edit Book';
        $data['title_list'] = 'Book Details';
        $data['id'] = $id;
        $editbook = $this->book_model->get($id);
        $data['editbook'] = $editbook;
        //set validation rules
        $this->form_validation->set_rules('book_title', 'Book Title', 'trim|required|xss_clean');


        if ($this->form_validation->run() == FALSE) {
            $listbook = $this->book_model->listbook();
            $data['listbook'] = $listbook;
            $this->load->view('layout/teacher/header');
            $this->load->view('teacher/book/editbook', $data);
            $this->load->view('layout/teacher/footer');
        } else {
            //pass validation
            $data = array(
                'id' => $this->input->post('id'),
                'book_title' => $this->input->post('book_title'),
                'subject' => $this->input->post('subject'),
                'rack_no' => $this->input->post('rack_no'),
                'publish' => $this->input->post('publish'),
                'author' => $this->input->post('author'),
                'qty' => $this->input->post('qty'),
                'perunitcost' => $this->input->post('perunitcost'),
                'postdate' => date('Y-m-d', $this->customlib->datetostrtotime($this->input->post('postdate'))),
                'description' => $this->input->post('description')
            );
            $this->book_model->addbooks($data);

            //display success message
            $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">Book updated successfully</div>');
            redirect('teacher/book/index');
        }
    }

    function delete($id) {
        //fetch data from department and designation tables
        $data['title'] = 'Fees Master List';

        $this->book_model->remove($id);
        //load the department_view
        redirect('teacher/book/index');
    }

}

?>