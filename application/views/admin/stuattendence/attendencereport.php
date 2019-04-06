<?php  ?><style type="text/css">
    .radio {
        padding-left: 20px; }
    .radio label {
        display: inline-block;
        vertical-align: middle;
        position: relative;
        padding-left: 5px; }
    .radio label::before {
        content: "";
        display: inline-block;
        position: absolute;
        width: 17px;
        height: 17px;
        left: 0;
        margin-left: -20px;
        border: 1px solid #cccccc;
        border-radius: 50%;
        background-color: #fff;
        -webkit-transition: border 0.15s ease-in-out;
        -o-transition: border 0.15s ease-in-out;
        transition: border 0.15s ease-in-out; }
    .radio label::after {
        display: inline-block;
        position: absolute;
        content: " ";
        width: 11px;
        height: 11px;
        left: 3px;
        top: 3px;
        margin-left: -20px;
        border-radius: 50%;
        background-color: #555555;
        -webkit-transform: scale(0, 0);
        -ms-transform: scale(0, 0);
        -o-transform: scale(0, 0);
        transform: scale(0, 0);
        -webkit-transition: -webkit-transform 0.1s cubic-bezier(0.8, -0.33, 0.2, 1.33);
        -moz-transition: -moz-transform 0.1s cubic-bezier(0.8, -0.33, 0.2, 1.33);
        -o-transition: -o-transform 0.1s cubic-bezier(0.8, -0.33, 0.2, 1.33);
        transition: transform 0.1s cubic-bezier(0.8, -0.33, 0.2, 1.33); }
    .radio input[type="radio"] {
        opacity: 0;
        z-index: 1; }
    .radio input[type="radio"]:focus + label::before {
        outline: thin dotted;
        outline: 5px auto -webkit-focus-ring-color;
        outline-offset: -2px; }
    .radio input[type="radio"]:checked + label::after {
        -webkit-transform: scale(1, 1);
        -ms-transform: scale(1, 1);
        -o-transform: scale(1, 1);
        transform: scale(1, 1); }
    .radio input[type="radio"]:disabled + label {
        opacity: 0.65; }
    .radio input[type="radio"]:disabled + label::before {
        cursor: not-allowed; }
    .radio.radio-inline {
        margin-top: 0; }
    .radio-primary input[type="radio"] + label::after {
        background-color: #337ab7; }
    .radio-primary input[type="radio"]:checked + label::before {
        border-color: #337ab7; }
    .radio-primary input[type="radio"]:checked + label::after {
        background-color: #337ab7; }
    .radio-danger input[type="radio"] + label::after {
        background-color: #d9534f; }
    .radio-danger input[type="radio"]:checked + label::before {
        border-color: #d9534f; }
    .radio-danger input[type="radio"]:checked + label::after {
        background-color: #d9534f; }
    .radio-info input[type="radio"] + label::after {
        background-color: #5bc0de; }
    .radio-info input[type="radio"]:checked + label::before {
        border-color: #5bc0de; }
    .radio-info input[type="radio"]:checked + label::after {
        background-color: #5bc0de; }
    </style>

    <div class="content-wrapper" style="min-height: 946px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i class="fa fa-calendar-check-o"></i> Attendance Count </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">  
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title"><i class="fa fa-search"></i> <?php echo $this->lang->line('select_criteria'); ?></h3>
                    </div>
                    <form id='form1' action="<?php echo site_url('admin/stuattendence/attendencereport') ?>"  method="post" accept-charset="utf-8">
                        <div class="box-body">
                            <?php echo $this->customlib->getCSRF(); ?>
                            <div class="row">
<div class="col-md-4">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1"><?php echo $this->lang->line('exam_name'); ?></label>

                                        <select  id="exam_id" name="exam_id" class="form-control" >
                                            <option value=""><?php echo $this->lang->line('select'); ?></option>
                                            <?php
                                            foreach ($examlist as $exam) {
                                                ?>
                                                <option value="<?php echo $exam['id'] ?>" <?php if ($exam_id == $exam['id']) {
                                                echo "selected =selected";
                                            } ?>><?php echo $exam['name'] ?></option>

                                                <?php
                                                $count++;
                                            }
                                            ?>
                                        </select>
                                        <span class="text-danger"><?php echo form_error('exam_id'); ?></span>
                                    </div>

                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1"><?php echo $this->lang->line('class'); ?></label>
                                        <select  id="class_id" name="class_id" class="form-control" >
                                            <option value=""><?php echo $this->lang->line('select'); ?></option>
                                            <?php
                                            foreach ($classlist as $class) {
                                                ?>
                                                <option value="<?php echo $class['id'] ?>" <?php
                                                if ($class_id == $class['id']) {
                                                    echo "selected =selected";
                                                }
                                                ?>><?php echo $class['class'] ?></option>
                                                        <?php
                                                        $count++;
                                                    }
                                                    ?>
                                        </select>
                                        <span class="text-danger"><?php echo form_error('class_id'); ?></span>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1"><?php echo $this->lang->line('section'); ?></label>
                                        <select  id="section_id" name="section_id" class="form-control" >
                                            <option value=""><?php echo $this->lang->line('select'); ?></option>
                                        </select>
                                        <span class="text-danger"><?php echo form_error('section_id'); ?></span>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        <div class="box-footer">
                            <button type="submit" name="search" value="search" class="btn btn-primary btn-sm pull-right checkbox-toggle"><i class="fa fa-search"></i> <?php echo $this->lang->line('search'); ?></button>
                            <button type="reset" id='btnreset' class="btn btn-default"><?php echo $this->lang->line('reset'); ?></button>  </div>
                    </form>
                </div>

               <?php if($resultlist OR ($class_id!='' AND $section_id!='' AND $exam_id!='') ){  $start_from=$resultlist[0][start_from];$end_to=$resultlist[0][end_to];?>
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title"><i class="fa fa-users"></i> Attendance Range </h3>
                            <div class="box-tools pull-right">
                            </div>
                        </div>

                        <div class="box-body">
 <?php
                            
                                if (!isset($msg)) {
                                    if ($resultlist[0]['id'] != "") {
                                            ?>
                                            <div class="alert alert-success"><?php echo $this->lang->line('attendance_already_submitted_you_can_edit_record'); ?></div>
                                            <?php
                                        } 
                                            ?>
                                           
                                            <?php
                                       
                                    
                                } else {
                                    ?>
                                    <div class="alert alert-success"><?php echo $this->lang->line('attendance_saved_successfully'); ?></div>
                                    <?php
                                }
                                ?>
                            <form action="<?php echo site_url('admin/stuattendence/attendencereport') ?>" method="post">
                                    <?php echo $this->customlib->getCSRF(); ?>
                                <div class="mailbox-controls">
                                    <div class="pull-right">
                                            <button type="submit" name="search" value="saveattendence" class="btn btn-primary btn-sm pull-right checkbox-toggle"><i class="fa fa-save"></i> <?php echo $this->lang->line('save'); ?> </button>
                                        </div>
                                </div>
                                <input type="hidden" name="class_id" value="<?php echo $class_id; ?>">
                                <input type="hidden" name="section_id" value="<?php echo $section_id; ?>">
                                <input type="hidden" name="exam_id" value="<?php echo $exam_id; ?>">
<input type="hidden" name="id" value="<?php echo $resultlist[0][id]; ?>">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <tr>
                                            
                                            <th>Start From</th>
                                            <th>End To</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                            <tr>
                                           
                                               
                                                <td>
                                                   <select class="form-control month" id="start_from" required name="start_from">
    <option value="">--Select Month--</option>
    <option <?php if ($start_from== 1) {echo "selected =selected";}?> value="1">Janaury</option>
    <option <?php if ($start_from == 2) {echo "selected =selected";}?> value="2">February</option>
    <option <?php if ($start_from== 3) {echo "selected =selected";}?> value="3">March</option>
    <option <?php if ($start_from== 4) {echo "selected =selected";}?> value="4">April</option>
    <option <?php if ($start_from== 5) {echo "selected =selected";}?> value="5">May</option>
    <option <?php if ($start_from== 6) {echo "selected =selected";}?> value="6">June</option>
    <option <?php if ($start_from== 7) {echo "selected =selected";}?> value="7">July</option>
    <option <?php if ($start_from== 8) {echo "selected =selected";}?> value="8">August</option>
    <option <?php if ($start_from== 9) {echo "selected =selected";}?> value="9">September</option>
    <option <?php if ($start_from == 10) {echo "selected =selected";}?> value="10">October</option>
    <option <?php if ($start_from== 11) {echo "selected =selected";}?> value="11">November</option>
    <option <?php if ($start_from == 12) {echo "selected =selected";}?> value="12">December</option>
    </select>

                                                </td>

                                                <td >
                                                    <select class="form-control month" id="end_to" required  name="end_to">
    <option value="">--Select Month--</option>
    <option <?php if ($end_to== 1) {echo "selected =selected";}?> value="1">Janaury</option>
    <option <?php if ($end_to== 2) {echo "selected =selected";}?> value="2">February</option>
    <option <?php if ($end_to== 3) {echo "selected =selected";}?> value="3">March</option>
    <option <?php if ($end_to== 4) {echo "selected =selected";}?> value="4">April</option>
    <option <?php if ($end_to == 5) {echo "selected =selected";}?> value="5">May</option>
    <option <?php if ($end_to== 6) {echo "selected =selected";}?> value="6">June</option>
    <option <?php if ($end_to== 7) {echo "selected =selected";}?> value="7">July</option>
    <option <?php if ($end_to== 8) {echo "selected =selected";}?> value="8">August</option>
    <option <?php if ($end_to== 9) {echo "selected =selected";}?> value="9">September</option>
    <option <?php if ($end_to== 10) {echo "selected =selected";}?> value="10">October</option>
    <option <?php if ($end_to== 11) {echo "selected =selected";}?> value="11">November</option>
    <option <?php if ($end_to== 12) {echo "selected =selected";}?> value="12">December</option>
    </select>

                                                </td>
                                            </tr>
                                           
                                    </tbody>
                                </table>
                                </form>
                        </div>
                    </div>
                    <?php }?>
                </section>
            </div>

            <script type="text/javascript">
                $(document).ready(function () {
                    var section_id_post = '<?php echo $section_id; ?>';
                    var class_id_post = '<?php echo $class_id; ?>';
                    populateSection(section_id_post, class_id_post);
                    function populateSection(section_id_post, class_id_post) {
                        $('#section_id').html("");
                        var base_url = '<?php echo base_url() ?>';
                        var div_data = '<option value=""><?php echo $this->lang->line('select'); ?></option>';
                        $.ajax({
                            type: "GET",
                            url: base_url + "sections/getByClass",
                            data: {'class_id': class_id_post},
                            dataType: "json",
                            success: function (data) {
                                $.each(data, function (i, obj)
                                {
                                    var select = "";
                                    if (section_id_post == obj.section_id) {
                                        var select = "selected=selected";
                                    }
                                    div_data += "<option value=" + obj.section_id + " " + select + ">" + obj.section + "</option>";
                                });

                                $('#section_id').append(div_data);
                            }
                        });
                    }
                    $(document).on('change', '#class_id', function (e) {
                        $('#section_id').html("");
                        var class_id = $(this).val();
                        var base_url = '<?php echo base_url() ?>';
                        var div_data = '<option value=""><?php echo $this->lang->line('select'); ?></option>';
                        $.ajax({
                            type: "GET",
                            url: base_url + "sections/getByClass",
                            data: {'class_id': class_id},
                            dataType: "json",
                            success: function (data) {
                                $.each(data, function (i, obj)
                                {
                                    div_data += "<option value=" + obj.section_id + ">" + obj.section + "</option>";
                                });
                                $('#section_id').append(div_data);
                            }
                        });
                    });
                    var date_format = '<?php echo $result = strtr($this->customlib->getSchoolDateFormat(), ['d' => 'dd', 'm' => 'mm', 'Y' => 'yyyy',]) ?>';
                    $('#date').datepicker({
                        format: date_format,
                        autoclose: true
                    });
                });
            </script>