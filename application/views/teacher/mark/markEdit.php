<?php  ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <?php echo $this->lang->line('general_form_element'); ?>
            <small><?php echo $this->lang->line('preview'); ?></small>
        </h1>
        <!--          <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li><a href="#">Forms</a></li>
                    <li class="active">General Elements</li>
                  </ol>-->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <!-- left column -->

            <!-- right column -->
            <div class="col-md-12">
                <!-- Horizontal Form -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title"><?php echo $title; ?></h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->

                    <form action="<?php echo site_url("teacher/exam/edit/" . $id) ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8">
                        <div class="box-body">
                            <?php if ($this->session->flashdata('msg')) { ?>
                                <?php echo $this->session->flashdata('msg') ?>
                            <?php } ?>
                             <?php echo $this->customlib->getCSRF(); ?>
                            <?php //echo validation_errors(); ?>
                            <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo $this->lang->line('subject_name'); ?></label>
                                <input id="name" name="name" placeholder="name" type="text" class="form-control"  value="<?php echo set_value('name', $exam['name']); ?>" />
                                <span class="text-danger"><?php echo form_error('name'); ?></span>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo $this->lang->line('note'); ?></label>

                                <textarea class="form-control" rows="3" id="note" name="note" placeholder="note" placeholder="Enter ..."><?php echo set_value('note', $exam['note']); ?></textarea>
                                <span class="text-danger"><?php echo form_error('note'); ?></span>
                            </div>

                        </div><!-- /.box-body -->

                        <div class="box-footer">
                            <button type="button" class="btn btn-default"><?php echo $this->lang->line('cancel'); ?></button>
                            <button type="submit" class="btn btn-info pull-right"><?php echo $this->lang->line('save'); ?></button>
                        </div>
                    </form>
                </div>
                <!-- general form elements disabled -->

            </div><!--/.col (right) -->
        </div>   <!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
