<?php  ?><div class="content-wrapper">  
    <section class="content-header">
        <h1>
            <i class="fa fa-mortar-board"></i> <?php echo $this->lang->line('academics'); ?> <small><?php echo $this->lang->line('student_fees1'); ?></small>        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-4">            
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title"><?php echo $this->lang->line('edit_class'); ?></h3>
                    </div>
                    <form action="<?php echo site_url("classes/edit/" . $id) ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8">
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
                            <input type="hidden" name="id" value="<?php echo set_value('id', $class['id']); ?>" >
                            <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo $this->lang->line('class'); ?></label>
                                <input id="class" name="class" placeholder="" type="text" class="form-control"  value="<?php echo set_value('class', $class['class']); ?>" />
                                <span class="text-danger"><?php echo form_error('class'); ?></span>
                            </div>
                        </div>
                        <div class="box-footer">
                            <button type="submit" class="btn btn-info pull-right" ><?php echo $this->lang->line('save'); ?></button>
                        </div>
                    </form>
                </div>
            </div>           
            <div class="col-md-8">              
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title"><?php echo $this->lang->line('class_list'); ?></h3>
                        <div class="box-tools pull-right">
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="table-responsive mailbox-messages">
                            <?php
                            if (!empty($classlist)) {
                                ?>
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo $this->lang->line('class'); ?>
                                            </th>
                                            <th class="pull-right"><?php echo $this->lang->line('action'); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $count = 1;
                                        foreach ($classlist as $class) {                                        
                                            ?>
                                            <tr> 
                                                <td class="mailbox-name"><?php echo $class['class'] ?></td>
                                                <td class="mailbox-date pull-right">
                                                    <a href="<?php echo base_url(); ?>classes/edit/<?php echo $class['id'] ?>" class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('edit'); ?>">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                    <a href="<?php echo base_url(); ?>classes/addsection/<?php echo $class['id'] ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('add_section'); ?>">
                                                        <i class="fa fa-plus"></i>
                                                    </a>
                                                    <a href="<?php echo base_url(); ?>classes/delete/<?php echo $class['id'] ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('delete'); ?>" onclick="return confirm('Are you sure you want to delete this item?');">
                                                        <i class="fa fa-remove"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <?php
                                            $count++;
                                        }
                                        ?>
                                    </tbody>
                                </table>
                                <?php
                            } else {
                                ?>
                                <div class="col-md-12">
                                    <div class="alert alert-info">No Record Found.</div>
                                </div>
                                <?php
                            }
                            ?>
                        </div>
                    </div>
                    <div class="box-footer">
                        <div class="mailbox-controls"> 
                            <div class="pull-right">
                            </div>
                        </div>
                    </div>
                </div>
            </div>   
        </div>
        <div class="row">      
            <div class="col-md-12">
            </div>
        </div> 
    </section>
</div>