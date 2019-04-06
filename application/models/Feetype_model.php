<?php  ?><?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Feetype_model extends CI_Model {

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
        $this->db->select('feetype.id,feetype.type,feetype.feecategory_id,feecategory.category')->from('feetype');
        $this->db->join('feecategory', 'feetype.feecategory_id = feecategory.id');
        if ($id != null) {
            $this->db->where('feetype.id', $id);
        } else {
            $this->db->order_by('feetype.id');
        }
        $query = $this->db->get();
        if ($id != null) {
            return $query->row_array();
        } else {
            return $query->result_array(); 
        }
    }

    public function getFeetypeByCategory($feecategory_id) {
        $this->db->select('feetype.id,feetype.type,feetype.feecategory_id,feecategory.category')->from('feetype');
        $this->db->join('feecategory', 'feetype.feecategory_id = feecategory.id');
        $this->db->where('feetype.feecategory_id', $feecategory_id);
        $query = $this->db->get();
        return $query->result_array(); 
    }

    public function getFeetype() {
        $this->db->select('feetype.id,feetype.type,feetype.feecategory_id,feecategory.category')->from('feetype');
        $this->db->join('feecategory', 'feetype.feecategory_id = feecategory.id');
        $this->db->order_by('feetype.id');
        $query = $this->db->get();
        return $query->result_array(); 
    }

    /**
     * This function will delete the record based on the id
     * @param $id
     */
    public function remove($id) {
        $this->db->where('id', $id);
        $this->db->delete('feetype');
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
            $this->db->update('feetype', $data); 
        } else {
            $this->db->insert('feetype', $data); 
            return $this->db->insert_id();
        }
    }

    public function getTypeByFeecategory($feecategory_id) {
        $this->db->select('feetype.id,feetype.type,feetype.feecategory_id,feecategory.category')->from('feetype');
        $this->db->join('feecategory', 'feetype.feecategory_id = feecategory.id');
        $this->db->where('feetype.feecategory_id', $feecategory_id);
        $this->db->order_by('feetype.id');
        $query = $this->db->get();
        return $query->result_array(); 
    }

}
