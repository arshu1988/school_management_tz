<?php  ?><?php
$currency_symbol = $this->customlib->getSchoolCurrencyFormat();
?>
<link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<script src="<?php echo base_url(); ?>backend/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<div class="content-wrapper" style="min-height: 946px;">
    <section class="content-header">
        <h1>
            <i class="fa fa-user-plus"></i> <?php echo $this->lang->line('student_information'); ?> <small><?php echo $this->lang->line('student1'); ?></small>        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-3">                
                <div class="box box-primary">
                    <div class="box-body box-profile">
                        <img class="profile-user-img img-responsive img-circle" src="<?php echo base_url() . $student['image'] ?>" alt="User profile picture">
                        <h3 class="profile-username text-center"><?php echo $student['firstname'] . " " . $student['lastname']; ?></h3>
                        <ul class="list-group list-group-unbordered">
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('admission_no'); ?></b> <a class="pull-right text-aqua"><?php echo $student['admission_no']; ?></a>
                            </li>
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('roll_no'); ?></b> <a class="pull-right text-aqua"><?php echo $student['roll_no']; ?></a>
                            </li>
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('class'); ?></b> <a class="pull-right text-aqua"><?php echo $student['class']; ?></a>
                            </li>
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('section'); ?></b> <a class="pull-right text-aqua"><?php echo $student['section']; ?></a>
                            </li>
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('rte'); ?></b> <a class="pull-right text-aqua"><?php echo $student['rte']; ?></a>
                            </li>
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('gender'); ?></b> <a class="pull-right text-aqua"><?php echo $this->lang->line(strtolower($student['gender'])); ?></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#activity" data-toggle="tab" aria-expanded="true"><?php echo $this->lang->line('profile'); ?></a></li>
                        <li class=""><a href="#fee" data-toggle="tab" aria-expanded="true"><?php echo $this->lang->line('fees'); ?></a></li>
                        <li class=""><a href="#exam" data-toggle="tab" aria-expanded="true"><?php echo $this->lang->line('exam'); ?></a></li>
                        <li class=""><a href="#half-marksheet" data-toggle="tab" aria-expanded="true">Term-1 Marksheet</a></li>
                        <li class=""><a href="#full-marksheet" data-toggle="tab" aria-expanded="true">Full Marksheet</a></li>
                        <li class=""><a href="#documents" data-toggle="tab" aria-expanded="true"><?php echo $this->lang->line('documents'); ?></a></li>
                        <li class="pull-right"><a href="<?php echo base_url() ?>/student/delete/<?php echo $student['id']; ?>" class="text-red" onclick="return confirm('Are you sure you want to delete this Student? All related data can not be recovered!');"><i class="fa fa-trash"></i> <?php echo $this->lang->line('delete'); ?> <?php echo $this->lang->line('student'); ?></a></li>
                        <li class="pull-right">
                            <a href="#"  class="schedule_modal text-green" data-toggle="tooltip" title="<?php echo $this->lang->line('login_detail'); ?>"><i class="fa fa-key"></i>
                                <?php echo $this->lang->line('login_details'); ?>
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="activity">
                          <div class="table-responsive">
                            <table class="table table-hover table-striped">
                                <tbody>  
                                    <tr>
                                        <td class="col-md-4"><?php echo $this->lang->line('admission_date'); ?></td>
                                        <td class="col-md-5">                                          
                                            <?php echo date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($student['admission_date'])); ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $this->lang->line('date_of_birth'); ?></td>
                                        <td><?php echo date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($student['dob'])); ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $this->lang->line('category'); ?></td>
                                        <td>
                                            <?php
                                            foreach ($category_list as $value) {
                                                if ($student['category_id'] == $value['id']) {
                                                    echo $value['category'];
                                                }
                                            }
                                            ?>                                         
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $this->lang->line('mobile_no'); ?></td>
                                        <td><?php echo $student['mobileno']; ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $this->lang->line('cast'); ?></td>
                                        <td><?php echo $student['cast']; ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $this->lang->line('religion'); ?></td>
                                        <td><?php echo $student['religion']; ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $this->lang->line('email'); ?></td>
                                        <td><?php echo $student['email']; ?></td>
                                    </tr>
                                </tbody>
                            </table>
                           </div> 
                            <h3><?php echo $this->lang->line('address'); ?> <?php echo $this->lang->line('detail'); ?></h3><hr/>
                            <div class="table-responsive">  
                            <table class="table table-hover table-striped"><tbody>
                                    <tr>
                                        <td><?php echo $this->lang->line('current_address'); ?></td>
                                        <td><?php echo $student['current_address']; ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $this->lang->line('permanent_address'); ?></td>
                                        <td><?php echo $student['permanent_address']; ?></td>
                                    </tr>
                                </tbody>
                            </table>
                            </div>
                            <h3><?php echo $this->lang->line('parent'); ?> / <?php echo $this->lang->line('guardian_details'); ?> </h3><hr/>
                            <div class="table-responsive">
                            <table class="table table-hover table-striped">
                                <tr>
                                    <td  class="col-md-4"><?php echo $this->lang->line('father_name'); ?></td>
                                    <td  class="col-md-5"><?php echo $student['father_name']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('father_phone'); ?></td>
                                    <td><?php echo $student['father_phone']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('father_occupation'); ?></td>
                                    <td><?php echo $student['father_occupation']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('mother_name'); ?></td>
                                    <td><?php echo $student['mother_name']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('mother_phone'); ?></td>
                                    <td><?php echo $student['mother_phone']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('mother_occupation'); ?></td>
                                    <td><?php echo $student['mother_occupation']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('guardian_name'); ?></td>
                                    <td><?php echo $student['guardian_name']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('guardian_relation'); ?></td>
                                    <td><?php echo $student['guardian_relation']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('guardian_phone'); ?></td>
                                    <td><?php echo $student['guardian_phone']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('guardian_occupation'); ?></td>
                                    <td><?php echo $student['guardian_occupation']; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('guardian_address'); ?></td>
                                    <td><?php echo $student['guardian_address']; ?></td>
                                </tr>

                                </tbody>
                            </table>
                           </div> 
                            <h3><?php echo $this->lang->line('miscellaneous_details'); ?></h3><hr/>
                            <div class="table-responsive">
                            <table class="table table-hover table-striped">
                                <tbody>
                                    <tr>
                                        <td  class="col-md-4"><?php echo $this->lang->line('previous_school_details'); ?></td>
                                        <td  class="col-md-5"><?php echo $student['previous_school']; ?></td>
                                    </tr>
                                    <tr>
                                        <td  class="col-md-4"><?php echo $this->lang->line('national_identification_no'); ?></td>
                                        <td  class="col-md-5"><?php echo $student['adhar_no']; ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $this->lang->line('local_identification_no'); ?></td>
                                        <td><?php echo $student['samagra_id']; ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $this->lang->line('bank_account_no'); ?></td>
                                        <td><?php echo $student['bank_account_no']; ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $this->lang->line('bank_name'); ?></td>
                                        <td><?php echo $student['bank_name']; ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $this->lang->line('ifsc_code'); ?></td>
                                        <td><?php echo $student['ifsc_code']; ?></td>
                                    </tr>
                                </tbody>
                            </table>
                            </div>
                        </div>
                        <div class="tab-pane" id="fee">
                            <h2 class="page-header"><?php echo $this->lang->line('class_fees_detail'); ?></h2>
                            <?php
                            if (empty($student_due_fee)) {
                                ?>
                                <div class="alert alert-danger">
                             <?php echo $this->lang->line('no_record_found'); ?>
                                </div>
                                <?php
                            } else {
                                ?>
                                <div class="table-responsive">  
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo $this->lang->line('payment_id'); ?></th>
                                            <th><?php echo $this->lang->line('date'); ?></th>
                                            <th><?php echo $this->lang->line('category'); ?></th>
                                            <th><?php echo $this->lang->line('type'); ?></th>
                                            <th class="text text-center"><?php echo $this->lang->line('mode'); ?></th>
                                            <th class="text text-center"><?php echo $this->lang->line('status'); ?></th>
                                            <th  class="text text-right"><?php echo $this->lang->line('amount'); ?></th>
                                            <th  class="text text-right"><?php echo $this->lang->line('fine'); ?></th>
                                            <th class="text text-right" ><?php echo $this->lang->line('discount'); ?></th>
                                            <th class="text text-right" ><?php echo $this->lang->line('total'); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $target_amount = "0";
                                        $deposite_amount = "0";
                                        foreach ($student_due_fee as $key => $fee) {
                                            $target_amount = $target_amount + $fee['amount'];
                                            $cls = "";
                                            $total_row = "xxx";
                                            $payment_status = "<span class='label bg-green'>".$this->lang->line('paid')."</span>";
                                            if ($fee['date'] == "xxx") {
                                                $cls = "text-red";
                                                $payment_status = "<span class='label bg-red'>".$this->lang->line('unpaid')."</span>";
                                            } else {
                                                $deposite_amount = $deposite_amount + $fee['amount'];
                                                $total_row = number_format(($fee['amount'] + $fee['fine']) - $fee['discount'], 2, '.', '');
                                            }
                                            ?>
                                            <tr>

                                                <td>
                                                    <?php                                                   
                                                    if ($fee['invoiceno'] == "xxx") {
                                                        ?>
                                                        <a href="#" class="<?php echo $cls; ?>"><?php echo $fee['invoiceno']; ?></a>
                                                        <?php
                                                    } else {
                                                        ?>
                                                        <a href="#" data-toggle="popover" class="detail_popover" ><?php echo $fee['invoiceno'] ?></a>
                                                        <div class="fee_detail_popover" style="display: none">
                                                            <?php
                                                            if ($fee['description'] == "") {
                                                                ?>
                                                                <p class="text text-danger"><?php echo $this->lang->line('no_description'); ?></p>
                                                                <?php
                                                            } else {
                                                                ?>
                                                                <p class="text text-info"><?php echo $fee['description']; ?></p>
                                                                <?php
                                                            }
                                                            ?>
                                                        </div>
                                                        <?php
                                                    }
                                                    ?>
                                                </td>
                                                <td class="<?php echo $cls; ?>"><?php
                                                    if ($fee['date'] != "xxx") {
                                                        echo date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($fee['date']));
                                                    } else {
                                                        echo $fee['date'];
                                                    }
                                                    ?></td>
                                                <td><?php echo $fee['category']; ?></td>
                                                <td><?php echo $fee['type']; ?></td>
                                                <td style="text-align: center;" class="<?php echo $cls; ?> text text-center"><?php echo $fee['payment_mode']; ?></td>
                                                <td class="text text-center"><?php echo $payment_status; ?></td>
                                                <td class="text text-right"><?php echo ($currency_symbol . $fee['amount']); ?></td>
                                                <td class="<?php echo $cls; ?> text text-right"><?php echo ($currency_symbol . $fee['fine']); ?></td>
                                                <td class="<?php echo $cls; ?> text text-right"><?php echo ($currency_symbol . $fee['discount']); ?></td>
                                                <td class="<?php echo $cls; ?> text text-right"><?php echo ($currency_symbol . $total_row); ?></td>
                                            </tr>
                                            <?php
                                        }
                                        ?>
                                    </tbody>
                                </table>
                                </div>
                                <?php
                            }
                            ?>
                            <h2 class="page-header"><?php echo $this->lang->line('transport'); ?>
                                <?php echo $this->lang->line('fees'); ?>
                                <?php echo $this->lang->line('detail'); ?>
                            </h2>
                            <?php
                            if (empty($transport_fee)) {
                                ?>
                                <div class="alert alert-danger">
                                    <?php echo $this->lang->line('no_transport_fees_found'); ?>
                                </div>
                                <?php
                            } else {
                                ?>
                                <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo $this->lang->line('payment_id'); ?></th>
                                            <th><?php echo $this->lang->line('date'); ?></th>
                                            <th><?php echo $this->lang->line('mode'); ?></th>
                                            <th class="text text-right"><?php echo $this->lang->line('amount'); ?></th>
                                            <th class="text text-right"><?php echo $this->lang->line('fine'); ?></th>
                                            <th class="text text-right"><?php echo $this->lang->line('total'); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $tot_trans_fee = 0;
                                        $count = 1;
                                        foreach ($transport_fee as $key => $value) {
                                            $tot_trans_fee = $tot_trans_fee + $value['amount'];
                                            ?>
                                            <tr>
                                                <td>
                                                    <a href="#" data-toggle="popover" class="detail_popover" ><?php echo $value['id'] ?></a>
                                                    <div class="fee_detail_popover" style="display: none">
                                                        <?php
                                                        if ($value['description'] == "") {
                                                            ?>
                                                            <p class="text text-danger"><?php echo $this->lang->line('no_description'); ?></p>
                                                            <?php
                                                        } else {
                                                            ?>
                                                            <p class="text text-info"><?php echo $value['description']; ?></p>
                                                            <?php
                                                        }
                                                        ?>
                                                    </div>
                                                </td>
                                                <td>
                                                    <?php echo date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($value['date'])); ?>
                                                </td>
                                                <td>
                                                    <?php echo $value['payment_mode']; ?>
                                                </td>
                                                <td class="text text-right">
                                                    <?php echo (($currency_symbol . $value['amount'])); ?>
                                                </td>
                                                <td class="text text-right">
                                                    <?php echo (($currency_symbol . $value['amount_fine'])); ?>
                                                </td>
                                                <td class="text text-right">

                                                    <?php echo ($currency_symbol . $total_row = number_format(($value['amount'] + $value['amount_fine']), 2, '.', '')); ?>
                                                </td>
                                            </tr>
                                            <?php
                                            $count++;
                                        }
                                        ?>
                                    </tbody>
                                </table>
                                </div>
                                <?php
                            }
                            ?>
                        </div>                       
                        <div class="tab-pane" id="documents">
                            <div class="timeline-header no-border">
                                <button type="button"  data-student-session-id="<?php echo $student['student_session_id'] ?>" class="btn btn-xs btn-primary pull-right myTransportFeeBtn"> <i class="fa fa-upload"></i>  <?php echo $this->lang->line('upload_documents'); ?></button>

                                <h2 class="page-header"><?php echo $this->lang->line('documents'); ?> <?php echo $this->lang->line('list'); ?></h2>
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>
                                                <?php echo $this->lang->line('title'); ?>
                                            </th>
                                            <th>
                                                <?php echo $this->lang->line('file'); ?> <?php echo $this->lang->line('name'); ?>
                                            </th>
                                            <th class="mailbox-date pull-right">
                                                <?php echo $this->lang->line('action'); ?>
                                            </th>
                                        </tr>
                                    </thead>
                                    <div class="row">                                     
                                        <tbody>
                                            <tr>
                                                <td>Character Certificate</td>
                                                <td>Character Certificate</td>
                                                <td class="mailbox-date pull-right">
                                                    <a class="btn btn-default btn-xs download-marksheet" data-html="c-certificate-body" data-toggle="tooltip" title="Download">
                                                        <i class="fa fa-download"></i>
                                                    </a>
                                                    <a class="btn btn-default btn-xs"  data-toggle="modal" data-target="#c-certificate-editor" title="Download">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Transfer Certificate</td>
                                                <td>Transfer Certificate</td>
                                                <td class="mailbox-date pull-right">
                                                    <a class="btn btn-default btn-xs download-marksheet" data-html="t-certificate-body" data-toggle="tooltip" title="Download">
                                                        <i class="fa fa-download"></i>
                                                    </a>
                                                    <a class="btn btn-default btn-xs"  data-toggle="modal" data-target="#t-certificate-editor" title="Download">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <?php
                                            if (empty($student_doc)) {
                                                ?>
                                                <tr>
                                                    <td colspan="5" class="text-danger text-center"><?php echo $this->lang->line('no_record_found'); ?></td>
                                                </tr>
                                                <?php
                                            } else {
                                                foreach ($student_doc as $value) {
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $value['title']; ?></td>
                                                        <td><?php echo $value['doc']; ?></td>
                                                        <td class="mailbox-date pull-right">
                                                            <a href="<?php echo base_url(); ?>student/download/<?php echo $value['student_id'] . "/" . $value['doc']; ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('download'); ?>">
                                                                <i class="fa fa-download"></i>
                                                            </a>
                                                            <a href="<?php echo base_url(); ?>student/doc_delete/<?php echo $value['id'] . "/" . $value['student_id']; ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('delete'); ?>" onclick="return confirm('Are you sure you want to delete this item?');">
                                                                <i class="fa fa-remove"></i>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <?php
                                                }
                                            }
                                            ?>
                                        </tbody>
                                </table>
                              </div>  
                            </div>
                            </table>
                        </div>                      
                        <div class="tab-pane" id="exam">
                            <h2 class="page-header"><?php echo $this->lang->line('exam'); ?> <?php echo $this->lang->line('list'); ?></h2>
                            <?php
                            if (empty($examSchedule)) {
                                ?>
                                <div class="alert alert-danger">
                                    No Exam Found.
                                </div>
                                <?php
                            } else {
                                foreach ($examSchedule as $key => $value) {
                                    ?>
                                    <h4 class="page-header"><?php echo $value['exam_name']; ?></h4>
                                    <?php
                                    if (empty($value['exam_result'])) {
                                        ?>
                                        <div class="alert alert-info"><?php echo $this->lang->line('no_result_prepare'); ?></div>
                                        <?php
                                    } else {
                                        ?>
                                      <div class="table-responsive">  
                                        <table class="table table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        <?php echo $this->lang->line('subject'); ?>
                                                    </th>
                                                    <th>
                                                        <?php echo $this->lang->line('full_marks'); ?>
                                                    </th>
                                                    <th>
                                                        <?php echo $this->lang->line('passing_marks'); ?>
                                                    </th>
                                                    <th>
                                                        <?php echo $this->lang->line('obtain_marks'); ?>
                                                    </th>
                                                    <th class="text text-right">
                                                        <?php echo $this->lang->line('result'); ?>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                $obtain_marks = "";
                                                $total_marks = "";
                                                $result = "Pass";
                                                $exam_results_array = $value['exam_result'];

                                                $s = 0;
                                                foreach ($exam_results_array as $result_k => $result_v) {

                                                    if($result_v['exam_type']!='Co-Curriculum'){
                                                    $total_marks = $total_marks + $result_v['full_marks'];
                                                    ?>
                                                    <tr>
                                                        <td>  <?php                                                           
                                                            echo $result_v['exam_name'] . " (" . substr($result_v['exam_type'], 0, 2) . ".) ";
                                                            ?></td>
                                                        <td><?php echo $result_v['full_marks']; ?></td>
                                                        <td><?php echo $result_v['passing_marks']; ?></td>
                                                        <td>
                                                            <?php
                                                            if ($result_v['attendence'] == "pre") {
                                                                echo $get_marks_student = $result_v['get_marks'];
                                                                $passing_marks_student = $result_v['passing_marks'];
                                                                if ($result == "Pass") {
                                                                    if ($get_marks_student < $passing_marks_student) {
                                                                        $result = "Fail";
                                                                    }
                                                                }
                                                                $obtain_marks = $obtain_marks + $result_v['get_marks'];
                                                            } else {
                                                                $result = "Fail";
                                                                echo ($result_v['attendence']);
                                                            }
                                                            ?>
                                                        </td>
                                                        <td class="text text-center">
                                                            <?php
                                                            if ($result_v['attendence'] == "pre") {
                                                                $passing_marks_student = $result_v['passing_marks'];

                                                                if ($get_marks_student < $passing_marks_student) {
                                                                    echo "<span class='label pull-right bg-red'>".$this->lang->line('fail')."</span>";
                                                                } else {
                                                                    echo "<span class='label pull-right bg-green'>Pass</span>";
                                                                }
                                                            } else {
                                                                echo "<span class='label pull-right bg-red'>".$this->lang->line('fail')."</span>";
                                                                $s++;
                                                            }}
                                                            ?>
                                                        </td>
                                                    </tr>
                                                    <?php
                                                    if ($s == count($exam_results_array)) {
                                                        $obtain_marks = 0;
                                                    }
                                                }
                                                ?>
                                            </tbody>
                                        </table>
                                       </div> 
                                        <div class="row">
                                            <?php
                                            $foo = "";
                                            ?>                                         
                                            <div class="col-sm-3 border-right">
                                                <div class="description-block">
                                                    <h5 class="description-header"><?php echo $this->lang->line('grand_total'); ?> :
                                                        <span class="description-text"><?php echo $obtain_marks . "/" . $total_marks; ?></span>

                                                    </h5>
                                                </div>                                               
                                            </div> 
                                            <div class="col-sm-3 border-right">
                                                <div class="description-block">
                                                    <h5 class="description-header"><?php echo $this->lang->line('percentage'); ?>:
                                                        <span class="description-text"><?php
                                                            $foo = ($obtain_marks * 100) / $total_marks;
                                                            echo number_format((float) $foo, 2, '.', '') . '%';
                                                            ?>
                                                        </span>
                                                    </h5>
                                                </div>                                           
                                            </div>                                          
                                            <div class="col-sm-3 pull">
                                                <div class="description-block">
                                                    <h5 class="description-header"><?php echo $this->lang->line('result'); ?> :
                                                        <span class="description-text">
                                                            <?php
                                                            if ($result == "Pass") {
                                                                ?>
                                                                <b class='text text-success'><?php echo $result; ?></b>
                                                                <?php
                                                            } else {
                                                                ?>
                                                                <b class='text text-danger'><?php echo $result; ?></b>
                                                                <?php
                                                            }
                                                            ?>
                                                        </span>
                                                    </h5>
                                                </div>                                             
                                            </div>
                                            <div class="col-sm-3 border-right">
                                                <div class="description-block">
                                                    <h5 class="description-header">
                                                        <span class="description-text"><?php                                                          
                                                            if (!empty($gradeList)) {                                                              
                                                                foreach ($gradeList as $key => $value) {
                                                                    if ($foo >= $value['mark_from'] && $foo <= $value['mark_upto']) {
                                                                        ?>
                                                                        <?php echo $this->lang->line('grade')." : " . $value['name']; ?>
                                                                        <?php
                                                                        break;
                                                                    }
                                                                }
                                                            }
                                                            ?></span>
                                                    </h5>
                                                </div>                                               
                                            </div>                                         
                                        </div>
                                    <?php }
                                    ?>
                                    <?php
                                }
                            }
                            ?>
                        </div>   
                        <?php  $this->load->view('student/fullMarksheet',array('settinglist'=>$settinglist,'student'=>$student,'subjectslist'=>$subjectslist,'examSchedule'=>$examSchedule,'gradeList'=>$gradeList,'extras'=>$extras)); ?> 
                        <?php  $this->load->view('student/halfMarksheet',array('settinglist'=>$settinglist,'student'=>$student,'subjectslist'=>$subjectslist,'examSchedule'=>$examSchedule,'gradeList'=>$gradeList,'extras'=>$extras)); ?> 
                        
                    </div>
                </div>
            </div>
    </section>
</div>
<script type="text/javascript">
    $(".myTransportFeeBtn").click(function () {        
        $("span[id$='_error']").html("");
        $('#transport_amount').val("");
        $('#transport_amount_discount').val("0");
        $('#transport_amount_fine').val("0");
        var student_session_id = $(this).data("student-session-id");
        $('.transport_fees_title').html("<b>Upload Document</b>");
        $('#transport_student_session_id').val(student_session_id);
        $('#myTransportFeesModal').modal({
            backdrop: 'static',
            keyboard: false,
            show: true

        });
    });
</script>
<div class="modal fade" id="myTransportFeesModal" role="dialog">
    <div class="modal-dialog">      
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title title text-center transport_fees_title"></h4>
            </div>
            <div class="">
                <div class="form-horizontal">
                    <div class="">
                        <input  type="hidden" class="form-control" id="transport_student_session_id"  value="0" readonly="readonly"/>
                        <form id="form1" action="<?php echo site_url('student/create_doc') ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8" enctype="multipart/form-data">
                             <?php echo $this->customlib->getCSRF(); ?>
                            <div id='upload_documents_hide_show'>                                                    
                                <input type="hidden" name="student_id" value="<?php echo $student_doc_id; ?>" id="student_id">
                                <h4><?php echo $this->lang->line('upload_documents1'); ?></h4>
                                <div class="col-md-12">
                                    <div class="">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1"><?php echo $this->lang->line('title'); ?></label>
                                                <input id="first_title" name="first_title" placeholder="" type="text" class="form-control"  value="<?php echo set_value('first_title'); ?>" />
                                                <span class="text-danger"><?php echo form_error('first_title'); ?></span>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1"><?php echo $this->lang->line('Documents'); ?></label>
                                                <input id="first_doc_id" name="first_doc" placeholder="" type="file" style="margin-top:8px; border:0; outline:none;" class="form-control"  value="<?php echo set_value('first_doc'); ?>" />
                                                <span class="text-danger"><?php echo form_error('first_doc'); ?></span>
                                            </div>
                                        </div>
                                    </div></div>
                            </div>
                            <div class="modal-footer" style="clear:both">
                                <button type="button" class="btn btn-default pull-left" data-dismiss="modal"><?php echo $this->lang->line('cancel'); ?></button>
                                <button type="submit" class="btn btn-info pull-right"><?php echo $this->lang->line('save'); ?></button>
                            </div>
                        </form>
                    </div>                 
                </div>
            </div>
        </div>
    </div>
</div>
<div id="scheduleModal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title_logindetail"></h4>
            </div>
            <div class="modal-body_logindetail">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo $this->lang->line('cancel'); ?></button>
            </div>
        </div>
    </div>
</div>
<div id="c-certificate-editor" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Character Certificate Content</h4>
            </div>
            <div class="modal-body" id="c-certificate-body">
                <div class="col-sm-12" id="c-certificate-header">
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td style="width:30%">
                                    <img src="<?php echo base_url() ?>uploads/school_content/logo/<?php echo $settinglist[0]['image']; ?>" class="img-thumbnail" alt="logo" height="100" style="height:100px;">
                                </td>
                                <td style="vertical-align:middle;width:70%; text-align: center;">
                                    <h2><?php echo $settinglist[0]['name']; ?></h2>
                                    <h4 class="clickable-cell"><span class="cell-text" data-remarkfor="c-header-l1"><?php echo isset($extras['c-header-l1'])?$extras['c-header-l1']:'(Senior Secondary, Affiliated to CBSE, '.$settinglist[0]['address'].')'; ?></span><input class="cell-input" type="hidden" style="width:100%;"></h4>
                                    <h4 class="clickable-cell"><span class="cell-text" data-remarkfor="c-header-l2"><?php echo isset($extras['c-header-l2'])?$extras['c-header-l2']:'[Full Address]'; ?></span><input class="cell-input" type="hidden" style="width:100%;"></h4>
                                    <h4 class="clickable-cell"><span class="cell-text" data-remarkfor="c-header-l3"><?php echo isset($extras['c-header-l3'])?$extras['c-header-l3']:'PH.'.$settinglist[0]['phone'].' e-mail:'.$settinglist[0]['email']; ?></span><input class="cell-input" type="hidden" style="width:100%;"></h4>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <hr size="4" style="background-color: #333;">
                    <h3 style="text-align:center;">Character Certificate</h3>
                </div>
                    <div class="form-group">
                        <textarea id="c-certificate-content" class="form-control" style="height: 300px">
                                    <?php if(isset($extras['c-certificate'])): echo $extras['c-certificate'];else: ?>
                                    <p> This is to certify that <?php echo $student['firstname'] . " " . $student['lastname']; ?> S/o Mr.<?php echo $student['father_name']; ?> r/o <?php echo $student['permanent_address']; ?> has been bonafide student of the institution studying in class <?php echo $student['class']; ?> during the session <?php echo $settinglist[0]['session']; ?></p>
                                    <p>He appeared in the SSE Exams of CBSE in <?php echo $settinglist[0]['session'] ?> with roll no. <?php echo $student['roll_no'] ?> and passed/failed the exam and was placed on ..........position in class.</p>
                                    <p>He has been obedient and nice during his stay in the school. He bears a good moral Character.</p>
                                    <p>We wish him every success in his career.</p>
                                    <?php endif; ?>
                        </textarea>
                    </div>
                
                 
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default save-cert" data-source="c-certificate-content" data-remarkfor="c-certificate" data-dismiss="modal"><?php echo $this->lang->line('save'); ?></button>
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo $this->lang->line('cancel'); ?></button>
            </div>
        </div>
    </div>
</div>
<div id="t-certificate-editor" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Transfer Certificate Content</h4>
            </div>
            <div class="modal-body" id="t-certificate-body">
                <div class="col-sm-12" id="t-certificate-header">
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td style="width:30%">
                                    <img src="<?php echo base_url() ?>uploads/school_content/logo/<?php echo $settinglist[0]['image']; ?>" class="img-thumbnail" alt="logo" height="100" style="height:100px;">
                                </td>
                                <td style="vertical-align:middle;width:70%; text-align: center;">
                                    <h2><?php echo $settinglist[0]['name']; ?></h2>
                                    <h4 class="clickable-cell"><span class="cell-text" data-remarkfor="c-header-l1"><?php echo isset($extras['c-header-l1'])?$extras['c-header-l1']:'(Senior Secondary, Affiliated to CBSE, '.$settinglist[0]['address'].')'; ?></span><input class="cell-input" type="hidden" style="width:100%;"></h4>
                                    <h4 class="clickable-cell"><span class="cell-text" data-remarkfor="c-header-l2"><?php echo isset($extras['c-header-l2'])?$extras['c-header-l2']:'[Full Address]'; ?></span><input class="cell-input" type="hidden" style="width:100%;"></h4>
                                    <h4 class="clickable-cell"><span class="cell-text" data-remarkfor="c-header-l3"><?php echo isset($extras['c-header-l3'])?$extras['c-header-l3']:'PH.'.$settinglist[0]['phone'].' e-mail:'.$settinglist[0]['email']; ?></span><input class="cell-input" type="hidden" style="width:100%;"></h4>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <h3 style="text-align:center;">Transfer Certificate</h3>
                </div>
                    <div class="form-group">
                        <textarea id="t-certificate-content" class="form-control" style="height: 300px">
                            <?php if(isset($extras['t-certificate'])): echo $extras['t-certificate'];else: ?>
                            <p>School No:........ Book No:......... S.R. No:........ Admission No:..........</p>
                            <p>Affiliation No:...... Renewed upto............. Status of school: Secondary/Sr. Secondary.</p>
                            <p>Registration No. of the candidate (in case Class -IX to XII):..........</p>
                            <p>1. Name of the Pupil:...........................</p>
                            <p>2. Mother's Name:...........................</p>
                            <p>3. Father's Name:...........................</p>
                            <p>4. Nationality:...........................</p>
                            <p>5. Whether the pupil belongs to SC/ST/OBC Category:...........................</p>
                            <p>6. Date of birth according to the Admission Register(in figure):...............</p>
                            <p>7. Whether the student is failed:...........................</p>
                            <p>8. Subjects offered:...........................</p>
                            <p>9. Class in which the pupil last studied(in words):...........................</p>
                            <p>10. School/Board Annual examination last taken with Result:...........................</p>
                            <p>11. Whether qualified for promotion to the next higher class:...........................</p>
                            <p>12. Whether the pupil has paid all the dues to the Vidyalaya:...........................</p>
                            <p>13. Whether the pupil was in receipt of any fee concession, if so the nature of such concession:...........................</p>
                            <p>14. Whether the pupil is NCC Cadet/Boy Scout/Guide (give detail):...........................</p>
                            <p>15. Date on Which pupils name was struck to the rolls of the Vidyalaya:...........................</p>
                            <p>16. Reason for leaving the Vidyalaya:...........................</p>
                            <p>17. No. of meeting up to date:...........................</p>
                            <p>18. No of school days pupil attended:...........................</p>
                            <p>19. General Conduct:...........................</p>
                            <p>20. Any Other Remark:...........................</p>
                            <p>21. Date of issue certificate:...........................</p>
                            <?php endif; ?>
                        </textarea>
                    </div>
                <div class="col-sm-12" id="t-certificate-footer">
                    
                    <table style="width:100%">
                        <tbody>
                            <tr>
                                <td style="width:20%"><hr>Prepared By<br>(Name & Designation)</td>
                                <td style="width:14%"> </td>
                                <td style="width:20%"><hr>Checked By<br>(Name & Designation)</td>
                                <td style="width:14%"> </td>
                                <td style="width:32%"><hr>Checked By<br>Sign. of Principal with Official Seal</td>
                            </tr>
                        </tbody>
                    </table>
                    <p>Note: If this T.C. is issued by Officiating/Incharge Principle, in valuably countersigned by the manager V.M.C.</p>
                </div>
                 
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default save-cert" data-source="t-certificate-content" data-remarkfor="t-certificate" data-dismiss="modal"><?php echo $this->lang->line('save'); ?></button>
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo $this->lang->line('cancel'); ?></button>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).on('click', '.schedule_modal', function () {
        $('.modal-title_logindetail').html("");
        $('.modal-title_logindetail').html("<?php echo $this->lang->line('login_details'); ?>");
        var base_url = '<?php echo base_url() ?>';
        var student_id = '<?php echo $student["id"] ?>';
        var student_first_name = '<?php echo $student["firstname"] ?>';
        var student_last_name = '<?php echo $student["lastname"] ?>';
        $.ajax({
            type: "post",
            url: base_url + "student/getlogindetail",
            data: {'student_id': student_id},
            dataType: "json",
            success: function (response) {            
                var data = "";
                data += '<div class="col-md-12">';
                data += '<div class="table-responsive">';
                data += '<p class="lead text text-center">' + student_first_name + ' ' + student_last_name + '</p>';
                data += '<table class="table table-hover">';
                data += '<thead>';
                data += '<tr>';
                data += '<th>'+"<?php echo $this->lang->line('user_type'); ?>"+'</th>';
                data += '<th class="text text-center">'+"<?php echo $this->lang->line('username'); ?>"+'</th>';
                data += '<th class="text text-center">'+"<?php echo $this->lang->line('password'); ?>"+'</th>';
                data += '</tr>';
                data += '</thead>';
                data += '<tbody>';
                $.each(response, function (i, obj)
                {
                    data += '<tr>';
                    data += '<td><b>' + firstToUpperCase(obj.role) + '</b></td>';
                    data += '<td class="text text-center">' + obj.username + '</td> ';
                    data += '<td class="text text-center">' + obj.password + '</td> ';
                    data += '</tr>';
                });
                data += '</tbody>';
                data += '</table>';
                data += '<b class="lead text text-danger" style="font-size:14px;"> '+"<?php echo $this->lang->line('login_url'); ?>"+': ' + base_url + 'site/userlogin</b>';
                data += '</div>  ';
                data += '</div>  ';
                $('.modal-body_logindetail').html(data);
                $("#scheduleModal").modal('show');
            }
        });
    });

    function firstToUpperCase(str) {
        return str.substr(0, 1).toUpperCase() + str.substr(1);
    }
</script>
<script>
    $(document).ready(function () {
        $('.detail_popover').popover({
            placement: 'right',
            title: '',
            trigger: 'hover',
            container: 'body',
            html: true,
            content: function () {
                return $(this).closest('td').find('.fee_detail_popover').html();
            }
        });
        $(".clickable-cell").click(function(){
            $(this).find(".cell-text").hide();
            $(this).find(".cell-input").attr('type','text');
        });
        $(".cell-input").blur(function(){
            var newText = $(this).val();
            var remarkFor = $(this).prev().data("remarkfor");
            $(this).prev().html(newText);
            $(this).attr('type','hidden');
            $(this).prev(".cell-text").show();
            var student_id = <?php echo $student['id'] ?>;
            if(newText!='' && typeof remarkFor !== "undefined"){
                var remarkParam = {'remark_for':remarkFor,'remark':newText}
                var encodedParam = $.param( remarkParam, true );
                //$class_id, $section_id
                $.post("<?php echo site_url('student/extras');?>", { student_id:student_id,remark_for:remarkFor,remark:newText });
                console.log("Fire the ajax");
                console.log(remarkFor);
            }
        });
        $(".save-cert").click(function(){
            var remarkFor = $(this).data("remarkfor");
            var source = $(this).data("source");
            console.log(source);
            var note = $('#'+source).val();
                        console.log(note);

            var remark = ' ';
            var student_id = <?php echo $student['id'] ?>;
            if(typeof remarkFor !== "undefined"){
                $.post("<?php echo site_url('student/extras');?>", { student_id:student_id,remark_for:remarkFor,remark:remark,note:note });
            }
        });
        $('.download-marksheet').click(function(event){
            event.preventDefault();
            $(this).hide();
            //var sourceId = $(this).data('html');
            var block_id = $(this).data('html');
            //var content = $(this).closest("div#"+block_id).html();
            
            if(block_id=='t-certificate-body'){
                var header = $("div#t-certificate-header").html();
                var footer = $("div#t-certificate-footer").html();
                var content = header+"<br/>"+$("#t-certificate-content").val()+"<br/>"+footer;
            } else if(block_id=='c-certificate-body'){
                var header = $("div#c-certificate-header").html();
                var content = header+"<br/><br/>"+$("#c-certificate-content").val();
            }
            else{
                var content = $("div#"+block_id).html();
            }
            //console.log(content);
            var newForm = $('<form>', {
                'action': '<?php echo site_url('student/marksheet_pdf');?>',
                'target': '_top',
                'method': 'post'
            }).append(jQuery('<input>', {
                'name': 'content',
                'value': content,
                'type': 'hidden'
            }));
            $(document.body).append(newForm);
            newForm.submit();
            $(this).show();
        });
    });
</script>
<style>
.mytable { border: 1px solid #eee; }
.mytable thead > tr > th { border-bottom: none; }
.mytable thead > tr > th, .mytable tbody > tr > th, .mytable tfoot > tr > th, .mytable thead > tr > td, .mytable tbody > tr > td, .mytable tfoot > tr > td { border: 1px solid #eee; }
</style>
<script>
    $(function () {
        //Add text editor
        $("#t-certificate-content").wysihtml5();
        $("#c-certificate-content").wysihtml5();
    });
</script>
