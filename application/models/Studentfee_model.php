<?php  ?><?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Studentfee_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->current_session = $this->setting_model->getCurrentSession();
        $this->current_date = $this->setting_model->getDateYmd();
    }

    /**
     * This funtion takes id as a parameter and will fetch the record.
     * If id is not provided, then it will fetch all the records form the table.
     * @param int $id
     * @return mixed
     */
    public function getStudentFeesArray($ids = null, $student_session_id) {
      $query = "SELECT feemasters.id as feemastersid, feemasters.amount as amount,IFNULL(student_fees.amount_paid, '0') as amount_paid, IFNULL(student_fees.id, 'xxx') as invoiceno,IFNULL(student_fees.payment_mode, 'xxx') as payment_mode,IFNULL(student_fees.amount_discount, 'xxx') as discount,IFNULL(student_fees.amount_fine, 'xxx') as fine, IFNULL(student_fees.date, 'xxx') as date,feetype.type ,feecategory.category FROM feemasters LEFT JOIN (select student_fees.id,student_fees.payment_mode,student_fees.amount_paid,student_fees.feemaster_id,student_fees.amount_fine,student_fees.amount_discount,student_fees.date,student_fees.student_session_id from student_fees , student_session where student_fees.student_session_id=student_session.id and student_session.id=" . $this->db->escape($student_session_id) . ") as student_fees ON student_fees.feemaster_id=feemasters.id LEFT JOIN feetype ON feemasters.feetype_id = feetype.id LEFT JOIN feecategory ON feetype.feecategory_id = feecategory.id where feemasters.id IN (".$ids.")";
      
      $query = $this->db->query($query);
      return $query->result_array(); 
  }

  public function getTotalCollectionBydate($date) {
    $sql = "SELECT sum(amount) as `amount`, SUM(amount_discount) as `amount_discount` ,SUM(amount_fine) as `amount_fine` FROM `student_fees` where date=".$this->db->escape($date);
    
    
    $query = $this->db->query($sql);

    return $query->row();
}

public function getStudentFees($id = null) {
    $this->db->select('feecategory.category,student_fees.id as `invoiceno`,student_fees.date,student_fees.id,student_fees.amount,student_fees.amount_discount,student_fees.amount_fine,student_fees.created_at,feetype.type')->from('student_fees');
    $this->db->join('student_session', 'student_session.id = student_fees.student_session_id');
    $this->db->join('feemasters', 'feemasters.id = student_fees.feemaster_id');
    $this->db->join('feetype', 'feetype.id = feemasters.feetype_id');
    $this->db->join('feecategory', 'feetype.feecategory_id = feecategory.id');
    $this->db->where('student_session.student_id', $id);
    $this->db->where('student_session.session_id', $this->current_session);
    $this->db->order_by('student_fees.id');
    $query = $this->db->get();
    return $query->result_array();
}

public function getFeeByInvoice($id = null) {
    $this->db->select('feecategory.category,student_fees.date,student_fees.payment_mode,student_fees.id as `student_fee_id`,student_fees.amount,student_fees.amount_discount,student_fees.amount_fine,student_fees.created_at,classes.class,sections.section,feetype.type,students.id,students.admission_no , students.roll_no,students.admission_date,students.firstname,  students.lastname,students.image,    students.mobileno, students.email ,students.state ,   students.city , students.pincode ,     students.religion,students.dob ,students.current_address,    students.permanent_address,students.category_id,    students.adhar_no,students.samagra_id,students.bank_account_no,students.bank_name, students.ifsc_code , students.guardian_name, students.guardian_relation,students.guardian_phone,students.guardian_address,students.is_active ,students.created_at ,students.updated_at,students.rte')->from('student_fees');
    $this->db->join('student_session', 'student_session.id = student_fees.student_session_id');
    $this->db->join('feemasters', 'feemasters.id = student_fees.feemaster_id');
    $this->db->join('feetype', 'feetype.id = feemasters.feetype_id');
    $this->db->join('classes', 'student_session.class_id = classes.id');
    $this->db->join('feecategory', 'feetype.feecategory_id = feecategory.id');
    $this->db->join('sections', 'sections.id = student_session.section_id');
    $this->db->join('students', 'students.id = student_session.student_id');
    $this->db->where('student_fees.id', $id);
    $this->db->where('student_session.session_id', $this->current_session);
    $this->db->order_by('student_fees.id');
    $query = $this->db->get();
    return $query->result_array(); 
}

public function getTodayStudentFees() {
    $this->db->select('student_fees.date,student_fees.id,student_fees.amount,student_fees.amount_discount,student_fees.amount_fine,student_fees.created_at,classes.class,sections.section,students.firstname,students.lastname,students.admission_no,students.roll_no,students.dob,students.guardian_name,feetype.type')->from('student_fees');
    $this->db->join('student_session', 'student_session.id = student_fees.student_session_id');
    $this->db->join('feemasters', 'feemasters.id = student_fees.feemaster_id');
    $this->db->join('feetype', 'feetype.id = feemasters.feetype_id');
    $this->db->join('classes', 'student_session.class_id = classes.id');
    $this->db->join('sections', 'sections.id = student_session.section_id');
    $this->db->join('students', 'students.id = student_session.student_id');
    $this->db->where('student_fees.date', $this->current_date);
    $this->db->where('student_session.session_id', $this->current_session);
    $this->db->order_by('student_fees.id');
    $query = $this->db->get();
    return $query->result_array(); 
}

    /**
     * This function will delete the record based on the id
     * @param $id
     */
    public function remove($id) {
        $this->db->where('id', $id);
        $this->db->delete('student_fees');
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
            $this->db->update('student_fees', $data);
        } else {
            $this->db->insert('student_fees', $data); 
            return $this->db->insert_id();
        }
    }

    public function getDueStudentFees($feetype_id = null, $class_id = null, $section_id = null) {
        $current_session = $this->current_session;
        $class_query = "";
        $section_query = "";
        if ($class_id != null) {
            $class_query = ' and student_session.class_id=' . $class_id;
        }
        if ($section_id != null) {
            $section_query = ' and student_session.section_id=' . $section_id;
        }
        $query = $this->db->query("select  classes.id AS `class_id`,classes.class,sections.id AS `section_id`,
            sections.section,students.id,students.admission_no , students.roll_no,students.admission_date,
            students.firstname,  students.lastname,students.image,    students.mobileno, students.dob,students.rte,
            students.email ,students.state , students.city from (select * from students as a where id not in (select students.id from student_fees, feemasters, student_session, students,
            feetype where feemasters.id =student_fees.feemaster_id and
            student_session.id = student_fees.student_session_id and
            students.id =student_session.student_id and
            feetype.id=feemasters.feetype_id and
            feetype.id=" . $this->db->escape($feetype_id) . " and student_session.session_id=" . $this->db->escape($this->current_session . $class_query . $section_query) . ") )as students,
            student_session,classes,sections
            where student_session.student_id = students.id and student_session.class_id = classes.id and  sections.id = student_session.section_id and student_session.session_id=" . $this->current_session . $class_query . $section_query);
        return $query->result_array(); 
    }

    public function getDueFeeBystudent($class_id = null, $section_id = null, $student_id = null) {
        $query = "SELECT feemasters.id as feemastersid, feemasters.amount as amount, student_fees.amount_paid, IFNULL(student_fees.id, 'xxx') as invoiceno,IFNULL(student_fees.amount_discount, 'xxx') as discount,IFNULL(student_fees.amount_fine, 'xxx') as fine,IFNULL(student_fees.payment_mode, 'xxx') as payment_mode,IFNULL(student_fees.date, 'xxx') as date,feetype.type ,feecategory.category,student_fees.description FROM feemasters LEFT JOIN (select student_fees.id,student_fees.feemaster_id, student_fees.amount_paid as amount_paid, student_fees.payment_mode,student_fees.amount_fine,student_fees.amount_discount,student_fees.date,student_fees.student_session_id,student_fees.description  from student_fees , student_session where student_fees.student_session_id=student_session.id and student_session.student_id=" . $this->db->escape($student_id) . " and student_session.class_id=" . $this->db->escape($class_id) . " and student_session.section_id=" . $this->db->escape($section_id) . ") as student_fees ON student_fees.feemaster_id=feemasters.id LEFT JOIN feetype ON feemasters.feetype_id = feetype.id LEFT JOIN feecategory ON feetype.feecategory_id = feecategory.id  where  feemasters.class_id=" . $this->db->escape($class_id) . " and feemasters.session_id=" . $this->db->escape($this->current_session);
        $query = $this->db->query($query);
        return $query->result_array();
    }

    public function getDueFeeBystudentSection($class_id = null, $section_id = null, $student_session_id = null) {
        $query = "SELECT feemasters.id as feemastersid, feemasters.amount as amount,IFNULL(student_fees.id, 'xxx') as invoiceno,IFNULL(student_fees.amount_discount, 'xxx') as discount,IFNULL(student_fees.amount_fine, 'xxx') as fine, IFNULL(student_fees.date, 'xxx') as date,feetype.type ,feecategory.category FROM feemasters LEFT JOIN (select student_fees.id,student_fees.feemaster_id,student_fees.amount_fine,student_fees.amount_discount,student_fees.date,student_fees.student_session_id from student_fees , student_session where student_fees.student_session_id=student_session.id and student_session.id=" . $this->db->escape($student_session_id) . " ) as student_fees ON student_fees.feemaster_id=feemasters.id LEFT JOIN feetype ON feemasters.feetype_id = feetype.id LEFT JOIN feecategory ON feetype.feecategory_id = feecategory.id  where  feemasters.class_id=" . $this->db->escape($class_id) . " and feemasters.session_id=" . $this->db->escape($this->current_session);
        $query = $this->db->query($query);
        return $query->result_array(); 
    }

    public function getFeesByClass($class_id = null, $section_id = null, $student_id = null) {
        $query = "SELECT feemasters.id as feemastersid, feemasters.amount as amount,IFNULL(student_fees.id, 'xxx') as invoiceno,IFNULL(student_fees.amount_discount, 'xxx') as discount,IFNULL(student_fees.amount_fine, 'xxx') as fine, IFNULL(student_fees.date, 'xxx') as date,feetype.type ,feecategory.category FROM feemasters LEFT JOIN (select student_fees.id,student_fees.feemaster_id,student_fees.amount_fine,student_fees.amount_discount,student_fees.date,student_fees.student_session_id from student_fees , student_session where student_fees.student_session_id=student_session.id and student_session.student_id=" . $this->db->escape($student_id) . " and student_session.class_id=" . $this->db->escape($class_id) . " and student_session.section_id=" . $this->db->escape($section_id) . ") as student_fees ON student_fees.feemaster_id=feemasters.id LEFT JOIN feetype ON feemasters.feetype_id = feetype.id LEFT JOIN feecategory ON feetype.feecategory_id = feecategory.id  where  feemasters.class_id=" . $this->db->escape($class_id) . " and feemasters.session_id=" . $this->db->escape($this->current_session);
        $query = $this->db->query($query);
        return $query->result_array(); 
    }

    public function getFeeBetweenDate($start_date, $end_date) {

        $this->db->select('student_fees.date,student_fees.id,student_fees.amount,student_fees.amount_discount,student_fees.amount_fine,student_fees.created_at,students.rte,classes.class,sections.section,students.firstname,students.lastname,students.admission_no,students.roll_no,students.dob,students.guardian_name,feetype.type')->from('student_fees');
        $this->db->join('student_session', 'student_session.id = student_fees.student_session_id');
        $this->db->join('feemasters', 'feemasters.id = student_fees.feemaster_id');
        $this->db->join('feetype', 'feetype.id = feemasters.feetype_id');
        $this->db->join('classes', 'student_session.class_id = classes.id');
        $this->db->join('sections', 'sections.id = student_session.section_id');
        $this->db->join('students', 'students.id = student_session.student_id');
        $this->db->where('student_fees.date >=', $start_date);
        $this->db->where('student_fees.date <=', $end_date);
        $this->db->where('student_session.session_id', $this->current_session);
        $this->db->order_by('student_fees.id');
        $query = $this->db->get();
        return $query->result_array();
    }

    public function getStudentTotalFee($class_id, $student_session_id) {
        $query = "SELECT a.totalfee,b.fee_deposit,b.payment_mode  FROM ( SELECT COALESCE(sum(amount),0) as totalfee FROM `feemasters` WHERE session_id =$this->current_session and class_id=".$this->db->escape($class_id).") as a, (select COALESCE(sum(amount),0) as fee_deposit,payment_mode from student_fees WHERE student_session_id =".$this->db->escape($student_session_id).") as b";
        $query = $this->db->query($query);
        return $query->row(); 
    }

}
