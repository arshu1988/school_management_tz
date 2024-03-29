<?php  ?><link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<script src="<?php echo base_url(); ?>backend/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i class="fa fa-bullhorn"></i> <?php echo $this->lang->line('communicate'); ?><small><?php echo $this->lang->line('student_fee1'); ?></small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <form id="form1" action="<?php echo base_url() ?>admin/notification/edit/<?php echo $id ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title"><i class="fa fa-commenting-o"></i> <?php echo $this->lang->line('edit_message'); ?></h3>
                        </div>                     
                        <div class="box-body">
                            <?php if ($this->session->flashdata('msg')) { ?>
                                <?php echo $this->session->flashdata('msg') ?>
                            <?php } ?>
                                    <?php echo $this->customlib->getCSRF(); ?>
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><?php echo $this->lang->line('title'); ?></label>
                                    <input id="title" name="title" placeholder="" type="text" class="form-control"  value="<?php echo set_value('title', $notification['title']); ?>" />
                                    <span class="text-danger"><?php echo form_error('title'); ?></span>
                                </div>
                                <div class="form-group"><label><?php echo $this->lang->line('message'); ?></label>
                                    <textarea id="compose-textarea" name="message" class="form-control" style="height: 300px">
                                        <?php echo set_value('message', $notification['message']); ?>
                                    </textarea>
                                    <span class="text-danger"><?php echo form_error('message'); ?></span>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="box-body">
                                    <?php
                                    if (isset($error_message)) {
                                        echo "<div class='alert alert-danger'>" . $error_message . "</div>";
                                    }
                                    ?>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1"><?php echo $this->lang->line('notice_date'); ?></label>
                                        <input id="date" name="date"  placeholder="" type="text" class="form-control date"  value="<?php echo set_value('date', date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($notification['date']))); ?>" />
                                        <span class="text-danger"><?php echo form_error('date'); ?></span>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1"><?php echo $this->lang->line('publish_on'); ?></label>
                                        <input id="publish_date" name="publish_date"  placeholder="" type="text" class="form-control date"  value="<?php echo set_value('publish_date', date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($notification['publish_date']))); ?>" />
                                        <span class="text-danger"><?php echo form_error('publish_date'); ?></span>
                                    </div>
                                    <div class="form-horizontal">
                                        <label for="exampleInputEmail1"><?php echo $this->lang->line('message_to'); ?></label>
                                        <div class="checkbox">
                                            <label><input type="checkbox" name="visible_to_std" value="student" <?php if (set_value('visible_to_std') == "student" || $notification['visible_student'] == "Yes") echo "checked" ?> /> <b><?php echo $this->lang->line('student'); ?></b> </label>
                                        </div>
                                        <div class="checkbox">
                                            <label><input type="checkbox" name="visible_to_par"  value="parent" <?php if (set_value('visible_to_par') == "parent" || $notification['visible_parent'] == "Yes") echo "checked" ?>  /> <b><?php echo $this->lang->line('parent'); ?></b></label>
                                        </div>
                                        <div class="checkbox">
                                            <label><input type="checkbox" name="visible_to_tea" value="teacher"<?php if (set_value('visible_to_tea') == "teacher" || $notification['visible_teacher'] == "Yes") echo "checked" ?>  /> <b><?php echo $this->lang->line('teacher'); ?></b> </label>
                                        </div>
                                    </div>
                                </div>
                            </div>                         
                            <div class="box-footer">
                                <div class="pull-right">

                                    <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i> <?php echo $this->lang->line('send'); ?> </button>
                                </div>
                            </div>                           
                        </div>                      
                    </div>
                </form>              
            </div>
        </div>
        <div class="row">           
            <div class="col-md-12">
            </div>
        </div>  
    </section>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        var date_format = '<?php echo $result = strtr($this->customlib->getSchoolDateFormat(), ['d' => 'dd', 'm' => 'mm', 'Y' => 'yyyy',]) ?>';
        $('.date').datepicker({           
            format: date_format,
            autoclose: true
        });
        $("#btnreset").click(function () {          
            $("#form1")[0].reset();
        });
    });

</script>
<script>
    $(function () {
       
        $("#compose-textarea").wysihtml5();
    });
</script>