<?php  ?><div class="content-wrapper"> 
    <section class="content-header">
        <h1>
            <i class="fa fa-key"></i> <?php echo $this->lang->line('change_password'); ?> </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <form action="<?php echo site_url('parent/parents/changepass') ?>"  id="passwordform" name="passwordform" method="post" accept-charset="utf-8" class="form-horizontal form-label-left">
                        <div class="box-body">                           
                            <?php
                            if (isset($error_message)) {
                                echo $error_message;
                            }
                            ?>
                             <?php echo $this->customlib->getCSRF(); ?>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="currentpass"><?php echo $this->lang->line('current_password'); ?></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="current_pass" name="current_pass" placeholder="" type="password" class="form-control"  value="<?php echo set_value('currentr_password'); ?>" />
                                    <span class="text-danger"><?php echo form_error('current_pass'); ?></span></div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="newpass"><?php echo $this->lang->line('new_password'); ?></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="new_pass" name="new_pass" placeholder="" type="password" class="form-control"  value="<?php echo set_value('new_password'); ?>" />
                                    <span class="text-danger"><?php echo form_error('new_pass'); ?></span>
                                </div></div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="conformpass"><?php echo $this->lang->line('confirm_password'); ?></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="confirm_pass" name="confirm_pass" placeholder="" type="password" class="form-control"  value="<?php echo set_value('conform_password'); ?>" />
                                    <span class="text-danger"><?php echo form_error('confirm_pass'); ?></span></div>
                            </div>
                        </div>
                        <div class="box-footer">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <button type="submit" class="btn btn-primary"><?php echo $this->lang->line('change_password'); ?></button>
                            </div>
                        </div>
                    </form>
                </div> 
            </div>
        </div> 
    </section>
</div>