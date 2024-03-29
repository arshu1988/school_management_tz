<?php  ?><style type="text/css">
    @media print
    {
        .no-print, .no-print *
        {
            display: none !important;
        }
    }
</style>
<?php
$currency_symbol = $this->customlib->getSchoolCurrencyFormat();
?>
<div class="content-wrapper" style="min-height: 946px;">
    <section class="content-header">
        <h1>
            <i class="fa fa-credit-card"></i> <?php echo $this->lang->line('expenses'); ?> <small><?php echo $this->lang->line('collection1'); ?></small>        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title"><i class="fa fa-search"></i> <?php echo $this->lang->line('select_criteria'); ?></h3>
                    </div>
                    <div class="box-body">
                        <div class="">
                            <div class="col-md-6">
                                <form role="form" action="<?php echo site_url('admin/expense/expenseSearch') ?>" method="post" class="form-horizontal">
        <?php echo $this->customlib->getCSRF(); ?>
                                    <div class="form-group">
                                        <div class="col-sm-6">
                                            <label><?php echo $this->lang->line('date_from'); ?></label>
                                            <input id="datefrom"  name="date_from" placeholder="" type="text" class="form-control date"  value="<?php echo set_value('date_from', date($this->customlib->getSchoolDateFormat())); ?>" readonly="readonly"/>
                                            <span class="text-danger"><?php echo form_error('class_id'); ?></span>
                                        </div>
                                        <div class="col-sm-6">
                                            <label><?php echo $this->lang->line('date_to'); ?></label>
                                            <input id="dateto" name="date_to" placeholder="" type="text" class="form-control date"  value="<?php echo set_value('date_to', date($this->customlib->getSchoolDateFormat())); ?>" readonly="readonly"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <button type="submit" name="search" value="search_filter" class="btn btn-primary btn-sm checkbox-toggle pull-right"><i class="fa fa-search"></i> <?php echo $this->lang->line('search'); ?></button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-6">
                                <form role="form" action="<?php echo site_url('admin/expense/expenseSearch') ?>" method="post" class="form-horizontal">
                                 <?php echo $this->customlib->getCSRF(); ?>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <label><?php echo $this->lang->line('search'); ?></label>
                                            <input type="text" value="<?php echo set_value('search_text', ""); ?>" name="search_text"  class="form-control" placeholder="Search by Expense">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <button type="submit" name="search" value="search_full" class="btn btn-primary btn-sm checkbox-toggle pull-right"><i class="fa fa-search"></i> <?php echo $this->lang->line('search'); ?></button>

                                        </div>
                                    </div>
                                </form>
                            </div>

                        </div>

                    </div>

                </div>
                <?php if (isset($resultList)) {
                    ?><div class="box box-info" id="exp">

                        <div class="box-header with-border">
                            <h3 class="box-title"><i class="fa fa-money"></i> <?php echo $this->lang->line('expense_result'); ?></h3>
                            <div class="box-tools pull-right">
                                <button type='button' class="btn btn-default btn-sm pull-right no-print" onclick="printDiv('#exp');"><i class="fa fa-print"></i></button>
                            </div>
                        </div>
                        <div class="box-body table-responsive">

                            <table class="table table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th><?php echo $this->lang->line('date'); ?></th>
                                        <th><?php echo $this->lang->line('expense_head'); ?></th>
                                        <th><?php echo $this->lang->line('name'); ?></th>                                      
                                        <th class="pull-right"><?php echo $this->lang->line('amount'); ?></th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    if (empty($resultList)) {
                                        ?>
                                        <tr>
                                            <td colspan="4" class="text-danger text-center"><?php echo $this->lang->line('no_record_found'); ?></td>

                                        </tr>
                                        <?php
                                    } else {
                                        $count = 1;
                                        $grand_total = 0;
                                        foreach ($resultList as $key => $value) {
                                            $grand_total = $grand_total + $value['amount'];
                                            ?>
                                            <tr>

                                                <td>         <?php echo date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($value['date'])); ?>     </td>
                                                <td> <?php echo $value['exp_category'] ?></td>
                                                <td>         <?php echo $value['name']; ?>     </td>
                                                <td class="pull-right"><?php echo ($currency_symbol . $value['amount']); ?>  </td>
                                            </tr>
                                            <?php
                                            $count++;
                                        }
                                        ?>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td class="pull-right text-bold"><?php echo $this->lang->line('grand_total'); ?> : <?php echo ($currency_symbol . number_format($grand_total, 2, '.', '')); ?>

                                            </td>
                                        </tr>
                                        <?php
                                    }
                                    ?>

                                </tbody>
                            </table>

                        </div>
                        <div class="box-footer">
                            <div class="mailbox-controls">
                                <!-- Check all button -->
                                <div class="pull-right">
                                </div><!-- /.pull-right -->
                            </div>
                        </div>
                    </div>
                    <?php
                }
                ?>

            </div>      

        </div>   <!-- /.row -->

    </section><!-- /.content -->
</div>
<script type="text/javascript">
    $(document).ready(function () {
        var date_format = '<?php echo $result = strtr($this->customlib->getSchoolDateFormat(), ['d' => 'dd', 'm' => 'mm', 'Y' => 'yyyy',]) ?>';
        $(".date").datepicker({
            // format: "dd-mm-yyyy",
            format: date_format,
            autoclose: true,
            todayHighlight: true

        });
    });
</script>
<script type="text/javascript">

    var base_url = '<?php echo base_url() ?>';

    function printDiv(elem) {      
        Popup(jQuery(elem).html());
    }

          function Popup(data) 
        {
          
            var frame1 = $('<iframe />');
            frame1[0].name = "frame1";
            frame1.css({ "position": "absolute", "top": "-1000000px" });
            $("body").append(frame1);
            var frameDoc = frame1[0].contentWindow ? frame1[0].contentWindow : frame1[0].contentDocument.document ? frame1[0].contentDocument.document : frame1[0].contentDocument;
            frameDoc.document.open();
        //Create a new HTML document.
        frameDoc.document.write('<html>');
        frameDoc.document.write('<head>');
        frameDoc.document.write('<title></title>');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/bootstrap/css/bootstrap.min.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/font-awesome.min.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/ionicons.min.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/AdminLTE.min.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/skins/_all-skins.min.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/iCheck/flat/blue.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/morris/morris.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/jvectormap/jquery-jvectormap-1.2.2.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/datepicker/datepicker3.css">');
        frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/daterangepicker/daterangepicker-bs3.css">');
        frameDoc.document.write('</head>');
        frameDoc.document.write('<body>');
        frameDoc.document.write(data);
        frameDoc.document.write('</body>');
        frameDoc.document.write('</html>');
        frameDoc.document.close();
        setTimeout(function () {
            window.frames["frame1"].focus();
            window.frames["frame1"].print();
            frame1.remove();
        }, 500);
        

        return true;
    }
</script>


