<?php  ?><div class="content-wrapper" style="min-height: 946px;">
    <section class="content-header">
        <h1>
            <i class="fa fa-user-secret"></i> <?php echo $this->lang->line('teachers'); ?> <small><?php echo $this->lang->line('student_fees1'); ?></small>        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">          
            <div class="col-md-12">              
            </div>         
            <div class="col-md-12">              
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="table-responsive mailbox-messages">
                            <table class="table table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th><?php echo $this->lang->line('teacher_name'); ?></th>
                                        <th><?php echo $this->lang->line('email'); ?></th>
                                        <th class="pull-right"><?php echo $this->lang->line('phone'); ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if (empty($teacherlist)) {
                                        ?>
                                        <tr>
                                            <td colspan="12" class="text-danger text-center"><?php echo $this->lang->line('no_record_found'); ?></td>
                                        </tr>
                                        <?php
                                    } else {
                                        $count = 1;
                                        foreach ($teacherlist as $teacher) {
                                            ?>
                                            <tr>
                                                <td class="mailbox-name"><?php echo $teacher['name'] ?></td>
                                                <td class="mailbox-name"><?php echo $teacher['email'] ?></td>
                                                <td class="mailbox-name pull-right"><?php echo $teacher['phone'] ?></td>
                                            </tr>
                                            <?php
                                        }
                                        $count++;
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="box-footer">
                        <div class="mailbox-controls"> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $('#dob,#admission_date').datepicker({
            format: "dd-mm-yyyy",
            autoclose: true
        });
        $("#btnreset").click(function () {           
            $("#form1")[0].reset();
        });
    });
</script>