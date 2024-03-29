<?php  ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <i class="fa fa-map-o"></i> <?php echo $this->lang->line('examinations'); ?> <small><?php echo $this->lang->line('student_fee1'); ?></small>        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-4">
                <!-- Horizontal Form -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title"><?php echo $this->lang->line('edit_exam'); ?></h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->

                    <form action="<?php echo site_url("admin/exam/edit/" . $id) ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8">
                        <div class="box-body">

                            <?php if ($this->session->flashdata('msg')) { ?>
                                <?php echo $this->session->flashdata('msg') ?>
                            <?php } ?>
                            <?php
                            if (isset($error_message)) {
                                echo "<div class='alert alert-danger'>" . $error_message . "</div>";
                            }
                            ?>   

        <?php echo $this->customlib->getCSRF(); ?>
                            <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo $this->lang->line('name'); ?></label>
                                <input id="name" name="name" placeholder="" type="text" class="form-control"  value="<?php echo set_value('name', $exam['name']); ?>" />
                                <span class="text-danger"><?php echo form_error('name'); ?></span>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Label</label>
                                <input id="label" name="label" placeholder="" type="text" class="form-control"  value="<?php echo set_value('label', $exam['label']); ?>" />
                            </div>
                            <div class="form-group">
                                <label class="radio-inline">
                                    <input type="radio" name="category_id" <?php if (set_value('category_id', $exam['category_id']) == "1") echo "checked"; ?> checked>Term-1
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="category_id" <?php if (set_value('category_id', $exam['category_id']) == "2") echo "checked"; ?> value="2">Term-2
                                </label>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo $this->lang->line('note'); ?></label>
                                <textarea class="form-control" id="note" name="note" placeholder="" rows="3" placeholder="Enter ..."><?php echo set_value('note'); ?><?php echo set_value('note', $exam['note']) ?></textarea>
                                <span class="text-danger"><?php echo form_error('note'); ?></span>
                            </div>
                        </div><!-- /.box-body -->

                        <div class="box-footer">
                          
                            <button type="submit" class="btn btn-info pull-right"><?php echo $this->lang->line('save'); ?></button>
                        </div>
                    </form>
                </div>

            </div><!--/.col (right) -->
            <!-- left column -->
            <div class="col-md-8">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title"><?php echo $this->lang->line('exam_list'); ?></h3>

                    </div><!-- /.box-header -->
                    <div class="box-body">

                        <div class="pull-right">

                        </div><!-- /.pull-right -->

                        <div class="table-responsive mailbox-messages">

                            <table class="table table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th><?php echo $this->lang->line('name'); ?></th>

                                        <th class="pull-right"><?php echo $this->lang->line('action'); ?></th>

                                    </tr>
                                </thead>
                                <tbody>
<?php if (empty($examlist)) {
    ?>
                                        <tr>
                                            <td colspan="12" class="text-danger text-center"><?php echo $this->lang->line('no_record_found'); ?></td>

                                        </tr>
    <?php
} else {
    $count = 1;
    foreach ($examlist as $exam) {

        ?>

                                            <tr>


                                                <td class="mailbox-name">
                                                    <a href="#" data-toggle="popover" class="detail_popover"><?php echo $exam['name'] ?></a>

                                                    <div class="fee_detail_popover" style="display: none">
        <?php
        if ($exam['note'] == "") {
            ?>
                                                            <p class="text text-danger"><?php echo $this->lang->line('no_description'); ?></p>
                                                            <?php
                                                        } else {
                                                            ?>
                                                            <p class="text text-info"><?php echo $exam['note']; ?></p>
                                                            <?php
                                                        }
                                                        ?>
                                                    </div>

                                                </td>

                                                <td class="mailbox-date pull-right">

                                                    <a href="<?php echo base_url(); ?>admin/exam/edit/<?php echo $exam['id'] ?>" class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('edit'); ?>">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <a href="<?php echo base_url(); ?>admin/exam/delete/<?php echo $exam['id'] ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('delete'); ?>" onclick="return confirm('Are you sure you want to delete this item?');">
                                                        <i class="fa fa-remove"></i>
                                                    </a>
                                                </td>
                                            </tr>
    <?php
    }
    $count++;
}
?>

                                </tbody>
                            </table><!-- /.table -->




                        </div><!-- /.mail-box-messages -->
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <div class="mailbox-controls">
                            <!-- Check all button -->

                            <div class="pull-right">

                            </div><!-- /.pull-right -->
                        </div>
                    </div>
                </div>

            </div><!--/.col (left) -->
            <!-- right column -->

        </div>
        <div class="row">
            <!-- left column -->

            <!-- right column -->
            <div class="col-md-12">

            </div><!--/.col (right) -->
        </div>   <!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->

<script type="text/javascript">
    $(document).ready(function () {

        $('#date').datepicker({
            format: "dd-mm-yyyy",
            autoclose: true
        });

    });
</script>

<script>
    $(document).ready(function () {
        $('.detail_popover').popover({
            placement: 'right',
            trigger: 'hover',
            container: 'body',
            html: true,
            content: function () {
                return $(this).closest('td').find('.fee_detail_popover').html();
            }
        });
    });
</script>
