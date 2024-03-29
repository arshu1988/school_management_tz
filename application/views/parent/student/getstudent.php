<?php  ?><?php
$currency_symbol = $this->customlib->getSchoolCurrencyFormat();
?>
<div class="content-wrapper" style="min-height: 946px;">
    <section class="content-header">
        <h1>
            <i class="fa fa-user-plus"></i> <?php echo $this->lang->line('student_information'); ?> <small><?php echo $this->lang->line('student1'); ?></small></h1>
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
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="activity">  
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
                            <h3><?php echo $this->lang->line('address'); ?> <?php echo $this->lang->line('detail'); ?></h3><hr/>
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
                            <h3><?php echo $this->lang->line('parent'); ?> / <?php echo $this->lang->line('guardian_details'); ?> </h3><hr/>
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
                            <h3><?php echo $this->lang->line('miscellaneous_details'); ?></h3><hr/>
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
                        <div class="tab-pane" id="fee">
                            <h2 class="page-header"><?php echo $this->lang->line('class_fees_detail'); ?></h2>
                            <?php
                            if (empty($student_due_fee)) {
                                ?>
                                <div class="alert alert-danger">
                                    <?php echo $this->lang->line('no_fees_found'); ?>
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
                                                $payment_status = '<span class="label bg-red">Unpaid</span>';
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
                                                <td  class="<?php echo $cls; ?> text text-center"><?php echo $fee['payment_mode']; ?></td>
                                                <td class="text text-center"><?php echo $payment_status; ?></td>
                                                <td class="text text-right"><?php echo ($currency_symbol . $fee['amount']); ?></td>
                                                <td class="<?php echo $cls; ?> text text-right"><?php echo ($currency_symbol . $fee['fine']); ?></td>
                                                <td class="<?php echo $cls; ?> text text-right"><?php echo ($currency_symbol . $fee['discount']); ?></td>
                                                <td class="<?php echo $cls; ?> text text-right"><?php echo ($currency_symbol . $total_row); ?></td>
                                                <?php
                                                if ($payment_setting->is_active == "yes") {
                                                    ?>
                                                    <td class="<?php echo ($currency_symbol . $cls); ?>">
                                                        <?php
                                                        if ($fee['date'] == "xxx") {
                                                            ?>
                                                            <a href="<?php echo base_url() . 'parent/payment/pay/' . $fee['feemastersid'] . '/' . $student['id'] ?>" class="btn btn-xs btn-primary pull-right myCollectFeeBtn"><i class="fa fa-paypal"></i> Paypal</a>
                                                            <?php
                                                        }
                                                        ?>
                                                    </td>
                                                    <?php
                                                }
                                                ?>
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
                                            <th class="text text-center"><?php echo $this->lang->line('mode'); ?></th>
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
                                                <td class="text text-center">
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
                                                                    echo "<span class='label pull-right bg-green'>".$this->lang->line('pass')."</span>";
                                                                }
                                                            } else {
                                                                echo "<span class='label pull-right bg-red'>".$this->lang->line('fail')."</span>";
                                                                $s++;
                                                            }
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
                                                                        <?php echo $this->lang->line('grade').": " . $value['name']; ?>
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
                        <form id="form1" action="<?php echo site_url('teacher/student/create_doc') ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8" enctype="multipart/form-data">
                            <div id='upload_documents_hide_show'>
                                 <?php echo $this->customlib->getCSRF(); ?>
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
                                                <input id="first_doc_id" name="first_doc" placeholder="" type="file" class="form-control"  value="<?php echo set_value('first_doc'); ?>" />
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
    });
</script>