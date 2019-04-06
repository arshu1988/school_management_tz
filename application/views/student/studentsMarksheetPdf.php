<?php  ?><!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">     
        <link href="<?php echo base_url(); ?>backend/images/s-favican.png" rel="shortcut icon" type="image/x-icon">       
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/bootstrap/css/bootstrap.min.css">      
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/font-awesome.min.css">     
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/ionicons.min.css">      
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/ss-main.css">
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/skins/_all-skins.min.css">     
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/iCheck/flat/blue.css">       
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/morris/morris.css">       
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/jvectormap/jquery-jvectormap-1.2.2.css">      
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/datepicker/datepicker3.css">      
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/daterangepicker/daterangepicker-bs3.css">      
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/sweet-alert/sweetalert2.css">
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/custom_style.css">
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/datepicker/css/bootstrap-datetimepicker.css">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and me/
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style type="text/css">
            .main-header .sidebar-session {
                float: left;
                background-color: transparent;
                background-image: none;
                padding: 15px 5px;
                font-family: fontAwesome;
                color: #f6f6f6;
                font-family: 'Roboto','Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;
            }
        </style>
        <style>
table.mytable { border: 1px solid #eee; }
/*.mytable thead > tr > th { border-bottom: none; }*/
table.mytable thead  tr  th, .tablemytable tbody  tr  th, table.mytable tfoot  tr  th, table.mytable thead  tr  td, table.mytable tbody  tr  td, .mytable tfoot > tr > td { border: 1px solid #eee; }
table.mytable thead  tr  th{border: 1px solid #eee ;}
.mytable thead > tr, .mytable tbody > tr, .mytable tfoot > tr { border: 1px solid #eee; }
.mytable .mytable,.mytable .mytable thead > tr > th,.mytable  .mytable tbody > tr > td,.mytable .mytable tfood > tr > td{
    /*border-top:0;border-bottom: 0;*/
}
</style>
    </head>
    <body class="hold-transition skin-blue fixed sidebar-mini" style="width: 600px;">
        <div class="wrappe">
            <div class="content-wrappr">
                <?php echo $html ?>
            </div>
        </div>
    </body>
</html>