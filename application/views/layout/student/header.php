<?php  ?><!DOCTYPE html>
<html <?php echo $this->customlib->getRTL();?>>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $this->customlib->getAppName() . " : School Management System" ?></title>       
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="theme-color" content="#424242" />
    <link href="<?php echo base_url(); ?>backend/images/s-favican.png" rel="shortcut icon" type="image/x-icon">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/bootstrap/css/bootstrap.min.css">       
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/ss-main.css">
    <?php
    if($this->customlib->getRTL() != ""){
        ?>
        <!-- Bootstrap 3.3.5 RTL -->
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/rtl/bootstrap-rtl/css/bootstrap-rtl.min.css"/>  
        <!-- Theme RTL style -->
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/rtl/dist/css/AdminLTE-rtl.min.css" />
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/rtl/dist/css/ss-rtlmain.css">
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/rtl/dist/css/skins/_all-skins-rtl.min.css" />

        <?php 

    }else{

    }

    ?>
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/font-awesome.min.css">      
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/ionicons.min.css">       

    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/iCheck/flat/blue.css">      
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/morris/morris.css">       
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/jvectormap/jquery-jvectormap-1.2.2.css">        
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/datepicker/datepicker3.css">       
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/daterangepicker/daterangepicker-bs3.css">      
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/sweet-alert/sweetalert2.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/custom_style.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>backend/datepicker/css/bootstrap-datetimepicker.css">
    <script src="<?php echo base_url(); ?>backend/custom/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>backend/dist/js/moment.min.js"></script>
    <script src="<?php echo base_url(); ?>backend/datepicker/js/bootstrap-datetimepicker.js"></script>
    <script src="<?php echo base_url(); ?>backend/datepicker/date.js"></script>       
    <script src="<?php echo base_url(); ?>backend/dist/js/jquery-ui.min.js"></script>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and me/
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
            <!-- <style type="text/css">
                .main-header .sidebar-session {
                    float: left;
                    background-color: transparent;
                    background-image: none;
                    padding: 15px 5px;
                    font-family: fontAwesome;
                    color: #f6f6f6;
                    font-family: 'Roboto','Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;
                }
            </style> -->
        </head>
        <body class="hold-transition skin-blue fixed sidebar-mini">
            <div class="wrapper">
                <header class="main-header">              
                    <a href="<?php echo base_url(); ?>user/user/dashboard" class="logo">                  
                        <span class="logo-mini">S S</span>                   
                        <span class="logo-lg"><img src="<?php echo base_url(); ?>backend/images/s_logo.png" alt="<?php echo $this->customlib->getAppName() ?>" /></span>
                    </a>             
                    <nav class="navbar navbar-static-top" role="navigation">                  
                        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                     <div class="col-md-6 col-sm-4 col-xs-5">   
                         <span href="#" class="sidebar-session">
                            <?php echo $this->setting_model->getCurrentSchoolName(); ?>
                        </span>
                     </div>   
                    <div class="col-md-6 col-sm-8 col-xs-5">
                      <div class="pull-right"> 
                        <div class="navbar-custom-menu">
                            <ul class="nav navbar-nav">    
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false"><?php echo $this->customlib->getStudentSessionUserName(); ?>
                                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-user">
                                        <li ><a href="<?php echo base_url(); ?>user/user/changepass"><i class="fa fa-key"></i> <?php echo $this->lang->line('change_password'); ?></a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="<?php echo base_url(); ?>site/logout"><i class="fa fa-sign-out fa-fw"></i> <?php echo $this->lang->line('logout'); ?></a>
                                        </li>
                                    </ul>                         
                                </li>   
                            </ul>
                        </div>
                      </div>
                     </div>
                    </nav>
                </header>
                <aside class="main-sidebar">               
                    <section class="sidebar">                   
                        <ul class="sidebar-menu">
                        <li><a href=""><span href="#" >
                            <?php echo $this->lang->line('current_session').": " . $this->setting_model->getCurrentSessionName(); ?>
                        </span></a></li>
                            <li class="<?php echo set_Topmenu('Dashboard'); ?>"><a href="<?php echo base_url(); ?>user/user/dashboard"><i class="fa fa-user-plus"></i> <?php echo $this->lang->line('my_profile'); ?></a></li>
                            <li class="<?php echo set_Topmenu('Time_table'); ?>"><a href="<?php echo base_url(); ?>user/timetable"><i class="fa fa-calendar-times-o"></i> <?php echo $this->lang->line('class_timetable'); ?></a></li>
                            <li class="treeview <?php echo set_Topmenu('Attendence'); ?>"><a href="<?php echo base_url(); ?>user/attendence"><i class="fa fa-calendar-check-o"></i> <?php echo $this->lang->line('attendance'); ?></a></li>
                            <li class="treeview <?php echo set_Topmenu('Examinations'); ?>">
                                <a href="#">
                                    <i class="fa fa-map-o"></i> <span><?php echo $this->lang->line('examinations'); ?></span> <i class="fa fa-angle-left pull-right"></i>
                                </a>
                                <ul class="treeview-menu">
                                    <li class="<?php echo set_Submenu('mark/marklist'); ?>"><a href="<?php echo base_url(); ?>user/mark/marklist"><i class="fa fa-angle-double-right"></i> <?php echo $this->lang->line('report_card'); ?></a></li>
                                    <li class="<?php echo set_Submenu('examSchedule/index'); ?>"><a href="<?php echo base_url(); ?>user/examschedule"><i class="fa fa-angle-double-right"></i> <?php echo $this->lang->line('exam_schedule'); ?></a></li>
                                </ul>
                            </li>
                            <li class="treeview <?php echo set_Submenu('user/notification'); ?>">
                                <a href="<?php echo base_url(); ?>user/notification">
                                    <i class="fa fa-envelope"></i> <span><?php echo $this->lang->line('notice_board'); ?></span>
                                    <?php
                                    $ntf = $this->customlib->getStudentunreadNotification();
                                    if ($ntf) {
                                        ?>
                                        <small class="label pull-right bg-red">
                                            <?php echo $ntf; ?>
                                        </small>
                                        <?php
                                    }
                                    ?>
                                </a>
                            </li>
                            <li class="<?php echo set_Topmenu('Subjects'); ?>"><a href="<?php echo base_url(); ?>user/subject"><i class="fa fa-language"></i> <?php echo $this->lang->line('subjects'); ?></a></li>
                            <li class="<?php echo set_Topmenu('Teachers'); ?>"><a href="<?php echo base_url(); ?>user/teacher"><i class="fa fa-user-secret"></i> <?php echo $this->lang->line('teachers'); ?></a></li>
                            <li class="<?php echo set_Topmenu('Library'); ?>"><a href="<?php echo base_url(); ?>user/book"><i class="fa fa-book"></i> <?php echo $this->lang->line('library_books'); ?></a></li>
                            <li class="<?php echo set_Submenu('route/index'); ?>"><a href="<?php echo base_url(); ?>user/route"><i class="fa fa-bus"></i> <?php echo $this->lang->line('transport_routes'); ?></a></li>
                            <li class="<?php echo set_Submenu('hostelroom/index'); ?>"><a href="<?php echo base_url(); ?>user/hostelroom"><i class="fa fa-building-o"></i> <?php echo $this->lang->line('hostel_rooms'); ?></a></li>
                            <li class="treeview <?php echo set_Topmenu('Downloads'); ?>">
                                <a href="#">
                                    <i class="fa fa-download"></i> <span><?php echo $this->lang->line('download_center'); ?></span> <i class="fa fa-angle-left pull-right"></i>
                                </a>
                                <ul class="treeview-menu">
                                    <li class="<?php echo set_Submenu('content/assignment'); ?>"><a href="<?php echo base_url(); ?>user/content/assignment"><i class="fa fa-angle-double-right"></i> <?php echo $this->lang->line('assignments'); ?></a></li>
                                    <li class="<?php echo set_Submenu('content/studymaterial'); ?>"><a href="<?php echo base_url(); ?>user/content/studymaterial"><i class="fa fa-angle-double-right"></i> <?php echo $this->lang->line('study_material'); ?></a></li>
                                    <li class="<?php echo set_Submenu('content/syllabus'); ?>"><a href="<?php echo base_url(); ?>user/content/syllabus"><i class="fa fa-angle-double-right"></i> <?php echo $this->lang->line('syllabus'); ?></a></li>
                                    <li class="<?php echo set_Submenu('content/other'); ?>"><a href="<?php echo base_url(); ?>user/content/other"><i class="fa fa-angle-double-right"></i> <?php echo $this->lang->line('other_downloads'); ?></a></li>
                                </ul>
                            </li>
                        </ul>
                    </section>              
                </aside> 