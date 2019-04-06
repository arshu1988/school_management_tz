<?php  ?><?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Class_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    /**
     * This funtion takes id as a parameter and will fetch the record.
     * If id is not provided, then it will fetch all the records form the table.
     * @param int $id
     * @return mixed
     */
    public function get($id = null) {
        $this->db->select()->from('classes');
        if ($id != null) {
            $this->db->where('id', $id);
        } else {
            $this->db->order_by('id');
        }
        $query = $this->db->get();
        if ($id != null) {
            return $query->row_array(); 
        } else {
            return $query->result_array(); 
        }
    }

    /**
     * This function will delete the record based on the id
     * @param $id
     */
    public function remove($id) {
        $this->db->where('id', $id);
        $this->db->delete('classes');
    }

    /**
     * This function will take the post data passed from the controller
     * If id is present, then it will do an update
     * else an insert. One function doing both add and edit.
     * @param $data
     */
    public function add($data) {
        if (isset($data['id'])) {
            $this->db->where('id', $data['id']);
            $this->db->update('classes', $data); 
        } else {
            $this->db->insert('classes', $data); 
        }
    }

    function check_data_exists($data) {
        $this->db->where('class', $data['class']);
        $this->db->where('id !=', $data['id']);
        $query = $this->db->get('classes');
        if ($query->num_rows() > 0) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
    function getSubjectByClass($class_id, $section_id){
        $this->db->select('s.*')->from('teacher_subjects as ts');
        $this->db->join('class_sections as cs', 'cs.id = ts.class_section_id');
        //$this->db->join('teacher_subjects as tsub', 'tsub.id = ts.subject_id');
        $this->db->join('subjects as s', 's.id = ts.subject_id');
        $this->db->where('cs.class_id', $class_id);
        $this->db->where('cs.section_id', $section_id);
        $query = $this->db->get();
        return $query->result_array();
    }

}
