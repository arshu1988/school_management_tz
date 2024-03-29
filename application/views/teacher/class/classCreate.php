<?php  ?><div class="content-wrapper">   
    <section class="content-header">
        <h1>
            <i class="glyphicon glyphicon-th"></i> <?php echo $this->lang->line('manage'); ?> <small><?php echo $this->lang->line('class'); ?></small>        </h1>
    </section>
    <section class="content">
        <div class="row">          
            <div class="col-md-12"> 
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title"><?php echo $this->lang->line('add_class'); ?></h3>
                    </div> 
                    <form id="form1" action="<?php echo site_url('teacher/classes/create') ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8">
                        <div class="box-body">
                            <?php if ($this->session->flashdata('msg')) { ?>
                                <?php echo $this->session->flashdata('msg') ?>
                            <?php } ?>   
                             <?php echo $this->customlib->getCSRF(); ?>
                            <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo $this->lang->line('class'); ?></label>
                                <input id="class" name="class" placeholder="class" type="text" class="form-control"  value="<?php echo set_value('class'); ?>" />
                                <span class="text-danger"><?php echo form_error('class'); ?></span>
                            </div>
                        </div>
                        <div class="box-footer">
                            <a href="<?php echo base_url(); ?>classes" class="btn btn-default" data-toggle="tooltip" title="<?php echo $this->lang->line('add_class'); ?>" ><?php echo $this->lang->line('add_class'); ?> </a>
                            <button type="submit" class="btn btn-info pull-right"><?php echo $this->lang->line('save'); ?></button>
                        </div>
                    </form>
                </div>  
            </div>
        </div>
    </section>
</div>