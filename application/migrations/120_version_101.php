<?php  ?><?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Version_101 extends CI_Migration {

    public function up() {

//     // ===================modify field on lang_keys=========
        $fields = array(
            'is_deleted' => array(
                'type' => 'VARCHAR',
                'constraint' => '10',
                'default' => 'yes',
                'after' => 'language'
                )
            );
        $this->dbforge->add_column('languages', $fields);
//     // ========================update ===========

        $this->db->query("UPDATE `lang_keys` SET `key` = 'admission_date' WHERE `lang_keys`.`key` = 'addmission_date';");

        $this->db->query("UPDATE `lang_keys` SET `key` = 'attendance_already_submitted_as_holiday' WHERE `lang_keys`.`key` = 'attendence_already_submitted_as_holiday';");

        $this->db->query("UPDATE `lang_keys` SET `key` = 'attendance_already_submitted_you_can_edit_record' WHERE `lang_keys`.`key` = 'attendence_already_submitted_you_can_edit_record';");

        $this->db->query("UPDATE `lang_keys` SET `key` = 'attendance_saved_successfully' WHERE `lang_keys`.`key` = 'attendence_saved_successfully';");

        $this->db->query("UPDATE `lang_keys` SET `key` = 'no_vehicle_allotted_to_this_route' WHERE `lang_keys`.`key` = 'no_vehicle_alloted_to_this_route';");
        
        $this->db->query("DELETE FROM `lang_keys` WHERE `lang_keys`.`key` = 'attendence';");
        
        $this->db->query("DELETE FROM `lang_keys` WHERE `lang_keys`.`key` = 'samagra_id';");

        $fields = array(
            'key' => array(
                'name' => 'key',
                'type' => 'VARCHAR',
                'constraint' => '100'
                ),
            );
        $this->dbforge->modify_column('lang_keys', $fields);
//     // ===================modify field on lang_keys=========
        $fields = array(
            'is_rtl' => array(
                'type' => 'VARCHAR',
                'constraint' => '10',
                'default' => 'disabled',
                'after' => 'currency_symbol'
                )
            );

        $this->dbforge->add_column('sch_settings', $fields);
//        // ===================add field on sms_config=========
        $fields = array(
            'type' => array(
                'type' => 'VARCHAR',
                'constraint' => '50',
                'null' => false,
                'after' => 'id'
                ),
            'name' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
                'null' => false,
                'after' => 'type'
                ),
            'api_id' => array(
                'type' => 'VARCHAR',
                'constraint' => '100',
                'null' => false,
                'after' => 'name'
                ),
            'contact' => array(
                'type' => 'text',
                'after' => 'api_id'
                )
            );

        $this->dbforge->add_column('sms_config', $fields);
//         // ===================add table vehicles=========
        $this->dbforge->add_field(
            array(
                'id' => array(
                    'type' => 'INT',
                    'constraint' => 10,
                    'unsigned' => true,
                    'auto_increment' => true
                    ),
                'vehicle_no' => array(
                    'type' => 'VARCHAR',
                    'constraint' => '20',
                    'null' => true,
                    ),
                'vehicle_model' => array(
                    'type' => 'VARCHAR',
                    'constraint' => '100',
                    'null' => false,
                    'default' => 'None',
                    ),
                'manufacture_year' => array(
                    'type' => 'VARCHAR',
                    'constraint' => '4',
                    'null' => true,
                    ),
                'driver_name' => array(
                    'type' => 'VARCHAR',
                    'constraint' => '50',
                    'null' => true,
                    ),
                'driver_licence' => array(
                    'type' => 'VARCHAR',
                    'constraint' => '50',
                    'null' => false,
                    'default' => 'None',
                    ),
                'driver_contact' => array(
                    'type' => 'VARCHAR',
                    'constraint' => '20',
                    'null' => true,
                    ),
                'note' => array(
                    'type' => 'TEXT',
                    'null' => true,
                    ),
                'created_at' => array(
                    'type' => 'timestamp'
                    ),
                )
            );

        $this->dbforge->add_key('id', TRUE);
        $this->dbforge->create_table('vehicles');

//  //====================Add vehicle_route table================

        $this->dbforge->add_field(
            array(
                'id' => array(
                    'type' => 'INT',
                    'constraint' => 11,
                    'unsigned' => true,
                    'auto_increment' => true
                    ),
                'route_id' => array(
                    'type' => 'INT',
                    'constraint' => '11',
                    'null' => true,
                    'default' => NULL,
                    ),
                'vehicle_id' => array(
                    'type' => 'INT',
                    'null' => true,
                    'default' => NULL,
                    ),
                'created_at' => array(
                    'type' => 'timestamp'
                    ),
                )
            );

        $this->dbforge->add_key('id', TRUE);
        $this->dbforge->create_table('vehicle_routes');
//         //===============Language Key======================
        $data = array(
            array('key' => 'edit_vehicle_on_route'),
            array('key' => 'assign_vehicle_on_route'),
            array('key' => 'vehicle_route_list'),
            array('key' => 'route'),
            array('key' => 'vehicle_routes'),
            array('key' => 'edit_vehicle'),
            array('key' => 'vehicle'),
            array('key' => 'vehicle_list'),
            array('key' => 'add_vehicle'),
            array('key' => 'driver_contact'),
            array('key' => 'driver_license'),
            array('key' => 'driver_name'),
            array('key' => 'vehicle_no'),
            array('key' => 'vehicle_model'),
            array('key' => 'logout'),
            array('key' => 'year_made'),
            array('key' => 'attendance'),
            array('key' => 'show'),           
            array('key' => 'add_timetable'),
            array('key' => 'edit_setting'),
            array('key' => 'subject_type'),
            array('key' => 'view_detail'),
            array('key' => 'exam_status'),
            array('key' => 'books'),
            array('key' => 'report_card'),
            array('key' => 'library_books'),
            array('key' => 'no_vehicle_alloted_to_this_route'),
            array('key' => 'Add/Edit'),
            array('key' => 'language_rtl_text_mode'),
            array('key' => 'clickatell_username'),
            array('key' => 'clickatell_password'),
            array('key' => 'clickatell_api_id'),
            array('key' => 'clickatell_sms_gateway'),
            array('key' => 'twilio_sms_gateway'),
            array('key' => 'custom_sms_gateway'),
            array('key' => 'twilio_account_sid'),
            array('key' => 'authentication_token'),
            array('key' => 'registered_phone_number'),
            array('key' => 'username'),
            array('key' => 'gateway_name'),
            array('key' => 'theory'),
            array('key' => 'practical'),
            array('key' => 'present'),
            array('key' => 'paid'),
            array('key' => 'yes'),
            array('key' => 'if_guardian_is'),
            array('key' => 'current_session'),
            array('key' => 'quick_links'),
            array('key' => 'student_details'),
            array('key' => 'student_admission'),
            array('key' => 'student_categories'),
            array('key' => 'promote_students'),           
            array('key' => 'fees_master'),
            array('key' => 'search_fees_payment'),
            array('key' => 'search_due_fees'),
            array('key' => 'fees_statement'),
            array('key' => 'balance_fees_report'),
            array('key' => 'search_expense'),
            array('key' => 'student_attendance'),
            array('key' => 'attendance_by_date'),
            array('key' => 'attendance_report'),
            array('key' => 'marks_register'),
            array('key' => 'marks_grade'),
            array('key' => 'assign_subjects'),
            array('key' => 'sections'),
            array('key' => 'assignments'),
            array('key' => 'study_material'),
            array('key' => 'routes'),
            array('key' => 'vehicles'),
            array('key' => 'assign_vehicle'),
            array('key' => 'send_message'),
            array('key' => 'student_report'),
            array('key' => 'transaction_report'),
            array('key' => 'exam_marks_report'),
            array('key' => 'session_setting'),
            array('key' => 'backup / restore'),
            array('key' => 'languages'),
            array('key' => 'grade'),
            array('key' => 'percentage'),
            array('key' => 'fees_collection_&_expenses_for_session'),
            array('key' => 'fees_receipt'),
            array('key' => 'fees_category'),
            array('key' => 'fees_collection_&_expenses_for'),
            array('key' => 'library_-_books'),
            array('key' => 'transport_-_routes'),
            array('key' => 'hostel_-_rooms'),
            array('key' => 'search_by_name,_roll_no,_enroll_no,_national_identification_no,_local_identification_no_etc..'),
            array('key' => 'user_type'),
            array('key' => 'login_url'),
            array('key' => 'search_student'),
            array('key' => 'student_lists'),
            array('key' => 'detailed_view'),          
            array('key' => 'active'),
            array('key' => 'syllabus'),
            array('key' => 'other_downloads'),
            array('key' => 'download'),
            array('key' => 'unpaid'),
            array('key' => 'enter_room_no'),
            array('key' => 'male'),
            array('key' => 'female'),
            array('key' => 'expense_result'),
            array('key' => 'view_schedule'),
            array('key' => 'pdf'),
            array('key' => 'not'),
            array('key' => 'scheduled'),        
            array('key' => 'transaction_from'),
            array('key' => 'to'),
            array('key' => 'enabled'),
            array('key' => 'disabled'),
            array('key' => 'add_language'),
            array('key' => 'no_description'),
            array('key' => 'fees_category_list'),
            array('key' => 'add_fee_category'),
            array('key' => 'edit_fee_category'),
            array('key' => 'late_with_excuse'), 
            array('key' => 'late'),
            array('key' => 'absent'),
            );
$this->db->insert_batch('lang_keys', $data);
//          //========================add colomn in student_session
$fields = array(
    'vehroute_id' => array(
        'type' => 'INT',
        'constraint' => '10',
        'after' => 'route_id'
        )
    );

$this->dbforge->add_column('student_session', $fields);
}

public function down() {

}

}
?>