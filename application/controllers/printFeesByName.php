<?php  ?><?php $currency_symbol = $this->customlib->getSchoolCurrencyFormat(); ?>
<style type="text/css">
    @media print {
        .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
            float: left;
        }
        .col-sm-12 {
            width: 100%;
        }
        .col-sm-11 {
            width: 91.66666667%;
        }
        .col-sm-10 {
            width: 83.33333333%;
        }
        .col-sm-9 {
            width: 75%;
        }
        .col-sm-8 {
            width: 66.66666667%;
        }
        .col-sm-7 {
            width: 58.33333333%;
        }
        .col-sm-6 {
            width: 50%;
        }
        .col-sm-5 {
            width: 41.66666667%;
        }
        .col-sm-4 {
            width: 33.33333333%;
        }
        .col-sm-3 {
            width: 25%;
        }
        .col-sm-2 {
            width: 16.66666667%;
        }
        .col-sm-1 {
            width: 8.33333333%;
        }
        .col-sm-pull-12 {
            right: 100%;
        }
        .col-sm-pull-11 {
            right: 91.66666667%;
        }
        .col-sm-pull-10 {
            right: 83.33333333%;
        }
        .col-sm-pull-9 {
            right: 75%;
        }
        .col-sm-pull-8 {
            right: 66.66666667%;
        }
        .col-sm-pull-7 {
            right: 58.33333333%;
        }
        .col-sm-pull-6 {
            right: 50%;
        }
        .col-sm-pull-5 {
            right: 41.66666667%;
        }
        .col-sm-pull-4 {
            right: 33.33333333%;
        }
        .col-sm-pull-3 {
            right: 25%;
        }
        .col-sm-pull-2 {
            right: 16.66666667%;
        }
        .col-sm-pull-1 {
            right: 8.33333333%;
        }
        .col-sm-pull-0 {
            right: auto;
        }
        .col-sm-push-12 {
            left: 100%;
        }
        .col-sm-push-11 {
            left: 91.66666667%;
        }
        .col-sm-push-10 {
            left: 83.33333333%;
        }
        .col-sm-push-9 {
            left: 75%;
        }
        .col-sm-push-8 {
            left: 66.66666667%;
        }
        .col-sm-push-7 {
            left: 58.33333333%;
        }
        .col-sm-push-6 {
            left: 50%;
        }
        .col-sm-push-5 {
            left: 41.66666667%;
        }
        .col-sm-push-4 {
            left: 33.33333333%;
        }
        .col-sm-push-3 {
            left: 25%;
        }
        .col-sm-push-2 {
            left: 16.66666667%;
        }
        .col-sm-push-1 {
            left: 8.33333333%;
        }
        .col-sm-push-0 {
            left: auto;
        }
        .col-sm-offset-12 {
            margin-left: 100%;
        }
        .col-sm-offset-11 {
            margin-left: 91.66666667%;
        }
        .col-sm-offset-10 {
            margin-left: 83.33333333%;
        }
        .col-sm-offset-9 {
            margin-left: 75%;
        }
        .col-sm-offset-8 {
            margin-left: 66.66666667%;
        }
        .col-sm-offset-7 {
            margin-left: 58.33333333%;
        }
        .col-sm-offset-6 {
            margin-left: 50%;
        }
        .col-sm-offset-5 {
            margin-left: 41.66666667%;
        }
        .col-sm-offset-4 {
            margin-left: 33.33333333%;
        }
        .col-sm-offset-3 {
            margin-left: 25%;
        }
        .col-sm-offset-2 {
            margin-left: 16.66666667%;
        }
        .col-sm-offset-1 {
            margin-left: 8.33333333%;
        }
        .col-sm-offset-0 {
            margin-left: 0%;
        }
        .visible-xs {
            display: none !important;
        }
        .hidden-xs {
            display: block !important;
        }
        table.hidden-xs {
            display: table;
        }
        tr.hidden-xs {
            display: table-row !important;
        }
        th.hidden-xs,
        td.hidden-xs {
            display: table-cell !important;
        }
        .hidden-xs.hidden-print {
            display: none !important;
        }
        .hidden-sm {
            display: none !important;
        }
        .visible-sm {
            display: block !important;
        }
        table.visible-sm {
            display: table;
        }
        tr.visible-sm {
            display: table-row !important;
        }
        th.visible-sm,
        td.visible-sm {
            display: table-cell !important;
        }
        .col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9{
            min-height: 1px;
            padding-left: 15px;
            padding-right: 15px;
            position: relative;
        }
        .content {
            background: #fff none repeat scroll 0 0;
            border: 1px solid #f4f4f4;
            margin: 10px 25px;
            padding: 20px;
            position: relative;
        }
    }
</style>

<html lang="en">
    <head>
        <title><?php echo $this->lang->line('fees_receipt'); ?></title>
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/bootstrap/css/bootstrap.min.css"> 
        <link rel="stylesheet" href="<?php echo base_url(); ?>backend/dist/css/AdminLTE.min.css">
    </head>
    <body>       
        <div class="container">
            <div class="row">
                <div id="content" class="col-lg-6 col-sm-6" style="border: 1px solid #f4f4f4;">
                    <div class="invoice">
                        <div class="row header text-center">
                            <div class="col-sm-2">
                            <?php 
                          if($settinglist[0]['image'] !="" ){
                            ?>

                                <img style="height:70px; " src="<?php echo base_url(); ?>/uploads/school_content/logo/<?php echo $settinglist[0]['image']; ?>">
                            <?php
                          }

                             ?>
                            </div>
                            <div class="col-sm-8">

                                <strong style="font-size: 20px;"><?php echo $settinglist[0]['name']; ?></strong><br>
                                <?php echo $settinglist[0]['address']; ?>
<!--   Email: <?php echo $settinglist[0]['email']; ?><br> -->
                                <?php echo $this->lang->line('phone'); ?>: <?php echo $settinglist[0]['phone']; ?><br>

                            </div><!--/col-->
                        </div>
                        <div class="row">  
                            <div class="col-xs-6">
                                <br/>
                                <div>
                                    Rcpt No: 

                                    <strong><?php echo $receipt_no; ?></strong>
                                </div>
                            </div>
                            <div class="col-xs-6 text-right">
                                <br/>
                                <div>
                                    Date: <strong><?php echo date('d-m-Y'); ?></strong><br/>
                                </div>                               
                            </div> 
                            <div class="col-xs-6">
                                <div>
                                    Class: 
                                    <strong><?php echo $student['roll_no']; ?></strong>
                                </div>
                            </div>
                            <div class="col-xs-6 text-right">
                                <div>
                                    Class: <strong><?php echo $student['class'] . " (" . $student['section'] . ")" ?></strong><br/>
                                </div>                               
                            </div> 
                            <div class="col-xs-12">
                                <div>
                                    Students's Name: 
                                    <strong><?php echo $student['firstname'] . " " . $student['lastname']; ?></strong>
                                </div>
                            </div> 
                            <div class="col-xs-12">
                                <div>
                                    Father's Name: 
                                    <strong><?php echo $student['guardian_name']; ?></strong>
                                </div>
                            </div> 
                            <div class="col-xs-12">
                                <div>
                                    Month: 
                                    <?php foreach ($monthly_record as $_record){$_month = $_record['type'];} ?>
                                    <strong><?php echo $_month; ?></strong>
                                </div>
                            </div>                        
                        </div>
                        <hr style="margin-top: 0px;margin-bottom: 0px;" />
                        <div class="row">
                            <?php
                            if (!empty($monthly_record)) {
                                ?>
                                <table class="table table-striped table-responsive col-xs-12" style="font-size: 8pt;">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th><?php echo $this->lang->line('amount'); ?></th>
                                            <th><?php echo $this->lang->line('status'); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody> 
                                        <?php
                                        $target_amount = "0";
                                        $deposite_amount = "0";
                                        $fine_amount = "0";
                                        $discount_amount = "0";
                                        $total_paid_amount = "0";
                                        $total_amount = "0";
                                        foreach ($monthly_record as $key => $fee) {                                        
                                            $target_amount = $target_amount + $fee['amount'];
                                            $cls = "";
                                            $total_row = "xxx";
                                            $payment_status = $this->lang->line('paid');
                                            if ($fee['date'] == "xxx") {
                                                $cls = "text-red";
                                                $payment_status = $this->lang->line('unpaid');
                                            } else {                                               
                                                $fine_amount = $fine_amount + $fee['fine'];
                                                $discount_amount = $discount_amount + $fee['discount'];
                                                $total_row = number_format(($fee['amount'] - $fee['discount']) + $fee['fine'], 2, '.'
                                                        , '');
                                                $total_paid_amount = $total_paid_amount + $total_row;
                                            }
                                            $total_amount = $total_amount + number_format(($fee['amount'] - $fee['discount']) + $fee['fine'], 2, '.', '');
                                            ?>
                                            <tr>
                                                <td><strong><?php echo $fee['category']; ?></strong></td>
                                                <td><?php echo $currency_symbol . $fee['amount']; ?></td>
                                                <td><?php echo $payment_status; ?></td>
                                                <!-- <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $fee['fine']; ?></td>
                                                <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $fee['discount']; ?></td>
                                                <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $total_row; ?></td> -->
                                            </tr>
                                            <!-- <tr>
                                                <td>
                                                    <a href="#" class="<?php echo $cls; ?>"><?php echo $fee['invoiceno']; ?></a></td>
                                                <td class="<?php echo $cls; ?>" style="width:100px"><?php
                                                    if ($fee['date'] == "xxx") {
                                                        echo "xxx";
                                                    } else {
                                                        echo date('d-m-Y', $this->customlib->dateyyyymmddTodateformat($fee['date']));
                                                    }//print_r($fee);die;
                                                    ?></td>
                                                <td><?php echo $fee['type']; ?></td>
                                                <td><?php echo $payment_status; ?></td>
                                                <td><?php echo $currency_symbol . $fee['amount']; ?></td>
                                                <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $fee['fine']; ?></td>
                                                <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $fee['discount']; ?></td>
                                                <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $total_row; ?></td>
                                            </tr> -->
                                            <?php
                                        }
                                        ?>
                                        <!-- <tr>
                                            <td colspan="5" class="text-right"><?php echo $this->lang->line('total'); ?>: </td>
                                            <td>
                                                <?php echo $currency_symbol . $ttm = number_format($target_amount, 2, '.', ''); ?>
                                            </td>
                                            <td>
                                                <?php echo $currency_symbol . $fm = number_format($fine_amount, 2, '.', ''); ?>
                                            </td>
                                            <td>
                                                <?php echo $currency_symbol . $dm = number_format($discount_amount, 2, '.', ''); ?>
                                            </td>
                                            <td>
                                                <?php echo $currency_symbol . $tpa = number_format($total_paid_amount, 2, '.', ''); ?>
                                            </td>
                                        </tr> -->
                                    </tbody>
                                </table>

                                <?php
                            }
                            ?>
                            <div class="row">  
                                <div class="col-xs-6">
                                    <br/>
                                    <div style="margin-left:15px;">
                                        Total Amount: 

                                        <strong><?php echo $currency_symbol . $total_amount; ?></strong>
                                    </div>
                                </div>
                                <div class="col-xs-6 text-right">
                                    <br/>
                                    <div style="margin-right:15px;">
                                        Closing Bal: <strong><?php echo $currency_symbol . ($total_amount-$total_paid_amount) ?></strong><br/>
                                    </div>                               
                                </div>
                            </div>
                            <div class="row">  
                                <div class="col-xs-6">
                                    <div style="margin-left:15px;">
                                        Amount Paid: 

                                        <strong><?php echo $currency_symbol . $total_paid_amount; ?></strong>
                                    </div>
                                </div>
                                <div class="col-xs-6 text-right">
                                    <div style="margin-right:15px;">
                                        Late Fine: <strong><?php echo $currency_symbol . $fine_amount; ?></strong><br/>
                                    </div>                               
                                </div>
                            </div>
                            <?php
                            if (!empty($transport_record)) {
                                ?>
                                <table class="table table-striped table-responsive" style="font-size: 8pt;">
                                    <thead>
                                        <tr>
                                            <th><?php echo $this->lang->line('payment_id'); ?></th>
                                            <th><?php echo $this->lang->line('date'); ?></th>
                                            <th><?php echo $this->lang->line('fees_type'); ?></th>
                                            <th><?php echo $this->lang->line('mode'); ?></th>
                                            <th class="center"><?php echo $this->lang->line('amount'); ?></th>
                                            <th class="right"><?php echo $this->lang->line('fine'); ?></th>
                                            <th class="right"><?php echo $this->lang->line('total'); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php                                       
                                        $cls = "";
                                        $transport_target_amount = "0";
                                        $transport_deposite_amount = "0";
                                        $transport_fine_amount = "0";
                                        $transport_discount_amount = "0";
                                        $transport_total_paid_amount = "0";
                                        $transport_total_paid_amount = "0";
                                        foreach ($transport_record as $key => $fee) {
                                            $transport_target_amount = $transport_target_amount + $fee['amount'];
                                            $transport_fine_amount = $transport_fine_amount + $fee['amount_fine'];
                                            $transport_discount_amount = $transport_discount_amount + $fee['amount_discount'];
                                            $transport_total_row = number_format(($fee['amount'] - $fee['amount_discount']) + $fee['amount_fine'], 2, '.', '');
                                            $transport_total_paid_amount = $transport_total_paid_amount + $transport_total_row;
                                            ?>
                                            <tr>
                                                <td>
                                                    <a href="#" class="<?php echo $cls; ?>"><?php echo $fee['id']; ?></a></td>
                                                <td class="<?php echo $cls; ?>" style="width:100px"><?php echo date('d-m-Y', $this->customlib->dateyyyymmddTodateformat($fee['date'])); ?></td>
                                                <td>Transport</td>
                                                <td><?php echo $fee['payment_mode']; ?></td>
                                                <td><?php echo $fee['amount']; ?></td>
                                                <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $fee['amount_fine']; ?></td>
                                                <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $transport_total_row; ?></td>
                                            </tr>
                                            <?php
                                        }
                                        ?>
                                        <tr>
                                            <td colspan="4" class="text-right"><?php echo $this->lang->line('total'); ?>: </td>
                                            <td>
                                                <?php
                                                $ttm = number_format($transport_target_amount, 2, '.', '');
                                                echo $currency_symbol . $ttm;
                                                ?>
                                            </td>
                                            <td>
                                                <?php
                                                $nf = number_format($transport_fine_amount, 2, '.', '');
                                                echo $currency_symbol . $nf;
                                                ?>
                                            </td>
                                            <td>
                                                <?php
                                                $ttpa = number_format($transport_total_paid_amount, 2, '.', '');
                                                echo $currency_symbol . $ttpa;
                                                ?>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
    <?php
}
?>
                        </div>
                    </div>
                </div>
                <div id="content" class="col-lg-6 col-sm-6 " style="border: 1px solid #f4f4f4;">
                    <div class="invoice">
                        <div class="row header text-center">
                            <div class="col-sm-2">
                            <?php 
                          if($settinglist[0]['image'] !="" ){
                            ?>

                                <img style="height:70px; " src="<?php echo base_url(); ?>/uploads/school_content/logo/<?php echo $settinglist[0]['image']; ?>">
                            <?php
                          }

                             ?>
                            </div>
                            <div class="col-sm-8">

                                <strong style="font-size: 20px;"><?php echo $settinglist[0]['name']; ?></strong><br>
                                <?php echo $settinglist[0]['address']; ?>
<!--   Email: <?php echo $settinglist[0]['email']; ?><br> -->
                                <?php echo $this->lang->line('phone'); ?>: <?php echo $settinglist[0]['phone']; ?><br>

                            </div><!--/col-->
                        </div>
                        <div class="row">  
                            <div class="col-xs-6">
                                <br/>
                                <div>
                                    Rcpt No: 

                                    <strong><?php echo $receipt_no; ?></strong>
                                </div>
                            </div>
                            <div class="col-xs-6 text-right">
                                <br/>
                                <div>
                                    Date: <strong><?php echo date('d-m-Y'); ?></strong><br/>
                                </div>                               
                            </div> 
                            <div class="col-xs-6">
                                <div>
                                    Class: 
                                    <strong><?php echo $student['roll_no']; ?></strong>
                                </div>
                            </div>
                            <div class="col-xs-6 text-right">
                                <div>
                                    Class: <strong><?php echo $student['class'] . " (" . $student['section'] . ")" ?></strong><br/>
                                </div>                               
                            </div> 
                            <div class="col-xs-12">
                                <div>
                                    Students's Name: 
                                    <strong><?php echo $student['firstname'] . " " . $student['lastname']; ?></strong>
                                </div>
                            </div> 
                            <div class="col-xs-12">
                                <div>
                                    Father's Name: 
                                    <strong><?php echo $student['guardian_name']; ?></strong>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div>
                                    Month: 
                                    <?php foreach ($monthly_record as $_record){$_month = $_record['type'];} ?>
                                    <strong><?php echo $_month; ?></strong>
                                </div>
                            </div>                          
                        </div>
                        <hr style="margin-top: 0px;margin-bottom: 0px;" />
                        <div class="row">
                            <?php
                            if (!empty($monthly_record)) {
                                ?>
                                <table class="table table-striped table-responsive col-xs-12" style="font-size: 8pt;">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th><?php echo $this->lang->line('amount'); ?></th>
                                            <th><?php echo $this->lang->line('status'); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $target_amount = "0";
                                        $deposite_amount = "0";
                                        $fine_amount = "0";
                                        $discount_amount = "0";
                                        $total_paid_amount = "0";
                                        $total_amount = "0";
                                        foreach ($monthly_record as $key => $fee) {                                        
                                            $target_amount = $target_amount + $fee['amount'];
                                            $cls = "";
                                            $total_row = "xxx";
                                            $payment_status = $this->lang->line('paid');
                                            if ($fee['date'] == "xxx") {
                                                $cls = "text-red";
                                                $payment_status = $this->lang->line('unpaid');
                                            } else {                                               
                                                $fine_amount = $fine_amount + $fee['fine'];
                                                $discount_amount = $discount_amount + $fee['discount'];
                                                $total_row = number_format(($fee['amount'] - $fee['discount']) + $fee['fine'], 2, '.'
                                                        , '');
                                                $total_paid_amount = $total_paid_amount + $total_row;
                                            }
                                            $total_amount = $total_amount + number_format(($fee['amount'] - $fee['discount']) + $fee['fine'], 2, '.', '');
                                            ?>
                                            <tr>
                                                <td><strong><?php echo $fee['category']; ?></strong></td>
                                                <td><?php echo $currency_symbol . $fee['amount']; ?></td>
                                                <td><?php echo $payment_status; ?></td>
                                                <!-- <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $fee['fine']; ?></td>
                                                <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $fee['discount']; ?></td>
                                                <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $total_row; ?></td> -->
                                            </tr>
                                            <!-- <tr>
                                                <td>
                                                    <a href="#" class="<?php echo $cls; ?>"><?php echo $fee['invoiceno']; ?></a></td>
                                                <td class="<?php echo $cls; ?>" style="width:100px"><?php
                                                    if ($fee['date'] == "xxx") {
                                                        echo "xxx";
                                                    } else {
                                                        echo date('d-m-Y', $this->customlib->dateyyyymmddTodateformat($fee['date']));
                                                    }//print_r($fee);die;
                                                    ?></td>
                                                <td><?php echo $fee['type']; ?></td>
                                                <td><?php echo $payment_status; ?></td>
                                                <td><?php echo $currency_symbol . $fee['amount']; ?></td>
                                                <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $fee['fine']; ?></td>
                                                <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $fee['discount']; ?></td>
                                                <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $total_row; ?></td>
                                            </tr> -->
                                            <?php
                                        }
                                        ?>
                                        <!-- <tr>
                                            <td colspan="5" class="text-right"><?php echo $this->lang->line('total'); ?>: </td>
                                            <td>
                                                <?php echo $currency_symbol . $ttm = number_format($target_amount, 2, '.', ''); ?>
                                            </td>
                                            <td>
                                                <?php echo $currency_symbol . $fm = number_format($fine_amount, 2, '.', ''); ?>
                                            </td>
                                            <td>
                                                <?php echo $currency_symbol . $dm = number_format($discount_amount, 2, '.', ''); ?>
                                            </td>
                                            <td>
                                                <?php echo $currency_symbol . $tpa = number_format($total_paid_amount, 2, '.', ''); ?>
                                            </td>
                                        </tr> -->
                                    </tbody>
                                </table>

                                <?php
                            }
                            ?>
                            <div class="row">  
                                <div class="col-xs-6">
                                    <br/>
                                    <div style="margin-left:15px;">
                                        Total Amount: 

                                        <strong><?php echo $currency_symbol . $total_amount; ?></strong>
                                    </div>
                                </div>
                                <div class="col-xs-6 text-right">
                                    <br/>
                                    <div style="margin-right:15px;">
                                        Closing Bal: <strong><?php echo $currency_symbol . ($total_amount-$total_paid_amount) ?></strong><br/>
                                    </div>                               
                                </div>
                            </div>
                            <div class="row">  
                                <div class="col-xs-6">
                                    <div style="margin-left:15px;">
                                        Amount Paid: 

                                        <strong><?php echo $currency_symbol . $total_paid_amount; ?></strong>
                                    </div>
                                </div>
                                <div class="col-xs-6 text-right">
                                    <div style="margin-right:15px;">
                                        Late Fine: <strong><?php echo $currency_symbol . $fine_amount; ?></strong><br/>
                                    </div>                               
                                </div>
                            </div>
                            <?php
                            if (!empty($transport_record)) {
                                ?>
                                <table class="table table-striped table-responsive" style="font-size: 8pt;">
                                    <thead>
                                        <tr>
                                            <th><?php echo $this->lang->line('payment_id'); ?></th>
                                            <th><?php echo $this->lang->line('date'); ?></th>
                                            <th><?php echo $this->lang->line('fees_type'); ?></th>
                                            <th><?php echo $this->lang->line('mode'); ?></th>
                                            <th class="center"><?php echo $this->lang->line('amount'); ?></th>
                                            <th class="right"><?php echo $this->lang->line('fine'); ?></th>
                                            <th class="right"><?php echo $this->lang->line('total'); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php                                       
                                        $cls = "";
                                        $transport_target_amount = "0";
                                        $transport_deposite_amount = "0";
                                        $transport_fine_amount = "0";
                                        $transport_discount_amount = "0";
                                        $transport_total_paid_amount = "0";
                                        $transport_total_paid_amount = "0";
                                        foreach ($transport_record as $key => $fee) {
                                            $transport_target_amount = $transport_target_amount + $fee['amount'];
                                            $transport_fine_amount = $transport_fine_amount + $fee['amount_fine'];
                                            $transport_discount_amount = $transport_discount_amount + $fee['amount_discount'];
                                            $transport_total_row = number_format(($fee['amount'] - $fee['amount_discount']) + $fee['amount_fine'], 2, '.', '');
                                            $transport_total_paid_amount = $transport_total_paid_amount + $transport_total_row;
                                            ?>
                                            <tr>
                                                <td>
                                                    <a href="#" class="<?php echo $cls; ?>"><?php echo $fee['id']; ?></a></td>
                                                <td class="<?php echo $cls; ?>" style="width:100px"><?php echo date('d-m-Y', $this->customlib->dateyyyymmddTodateformat($fee['date'])); ?></td>
                                                <td>Transport</td>
                                                <td><?php echo $fee['payment_mode']; ?></td>
                                                <td><?php echo $fee['amount']; ?></td>
                                                <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $fee['amount_fine']; ?></td>
                                                <td class="<?php echo $cls; ?>"><?php echo $currency_symbol . $transport_total_row; ?></td>
                                            </tr>
                                            <?php
                                        }
                                        ?>
                                        <tr>
                                            <td colspan="4" class="text-right"><?php echo $this->lang->line('total'); ?>: </td>
                                            <td>
                                                <?php
                                                $ttm = number_format($transport_target_amount, 2, '.', '');
                                                echo $currency_symbol . $ttm;
                                                ?>
                                            </td>
                                            <td>
                                                <?php
                                                $nf = number_format($transport_fine_amount, 2, '.', '');
                                                echo $currency_symbol . $nf;
                                                ?>
                                            </td>
                                            <td>
                                                <?php
                                                $ttpa = number_format($transport_total_paid_amount, 2, '.', '');
                                                echo $currency_symbol . $ttpa;
                                                ?>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
    <?php
}
?>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
        <div class="clearfix"></div>
        <footer>           
        </footer>
    </body>
</html>
