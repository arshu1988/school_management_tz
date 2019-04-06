<?php  ?><?php
$currency_symbol = $this->customlib->getSchoolCurrencyFormat();
?>
<div class="content-wrapper" style="min-height: 946px;">
    <section class="content-header">
        <h1>
            <i class="fa fa-user-plus"></i> <?php echo $this->lang->line('student_information'); ?> <small><?php echo $this->lang->line('student1'); ?></small></h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-3">
                <div class="box box-primary">
                    <div class="box-body box-profile">
                        <img class="profile-user-img img-responsive img-circle" src="<?php echo base_url() . $student['image'] ?>" alt="User profile picture">
                        <h3 class="profile-username text-center"><?php echo $student['firstname'] . " " . $student['lastname']; ?></h3>
                        <ul class="list-group list-group-unbordered">
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('admission_no'); ?></b> <a class="pull-right"><?php echo $student['admission_no']; ?></a>
                            </li>
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('roll_no'); ?></b> <a class="pull-right"><?php echo $student['roll_no']; ?></a>
                            </li>
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('class'); ?></b> <a class="pull-right"><?php echo $student['class']; ?></a>
                            </li>
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('section'); ?></b> <a class="pull-right"><?php echo $student['section']; ?></a>
                            </li>
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('rte'); ?></b> <a class="pull-right"><?php echo $student['rte']; ?></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">
                         <?php echo $this->lang->line('fees'); ?>
                        </h3>
                    </div>
                    <div class="box-body">
                        <?php
                        if (empty($student_due_fee)) {
                            ?>
                            <div class="alert alert-danger">
                                No fees Found.
                            </div>
                            <?php
                        } else {
                            ?>
                          <div class="table-responsive">  
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th><?php echo $this->lang->line('payment_id'); ?></th>
                                        <th><?php echo $this->lang->line('date'); ?></th>
                                        <th><?php echo $this->lang->line('category'); ?></th>
                                        <th><?php echo $this->lang->line('type'); ?></th>
                                        <th class="text text-center"><?php echo $this->lang->line('mode'); ?></th>
                                        <th class="text text-center"><?php echo $this->lang->line('status'); ?></th>
                                        <th  class="text text-right"><?php echo $this->lang->line('amount'); ?></th>
                                        <th  class="text text-right"><?php echo $this->lang->line('fine'); ?></th>
                                        <th class="text text-right" ><?php echo $this->lang->line('discount'); ?></th>
                                        <th class="text text-right" ><?php echo $this->lang->line('total'); ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $target_amount = "0";
                                    $deposite_amount = "0";
                                    foreach ($student_due_fee as $key => $fee) {
                                        $target_amount = $target_amount + $fee['amount'];
                                        $cls = "";
                                        $total_row = "xxx";
                                        $payment_status = "<span class='label label-success'>".$this->lang->line('paid')."</span>";
                                        if ($fee['date'] == "xxx") {
                                            $cls = "text-red";
                                            $payment_status = "<span class='label label-danger'>".$this->lang->line('unpaid')."</span>";
                                        } else {
                                            $deposite_amount = $deposite_amount + $fee['amount'];
                                            $total_row = number_format(($fee['amount'] + $fee['fine']) - $fee['discount'], 2, '.', '');
                                        }
                                        ?>
                                        <tr>
                                            <td>
                                                <?php                                              
                                                if ($fee['invoiceno'] == "xxx") {
                                                    ?>
                                                    <a href="#" class="<?php echo $cls; ?>"><?php echo $fee['invoiceno']; ?></a>
                                                    <?php
                                                } else {
                                                    ?>
                                                    <a href="#" data-toggle="popover" class="detail_popover" ><?php echo $fee['invoiceno'] ?></a>
                                                    <div class="fee_detail_popover" style="display: none">
                                                        <?php
                                                        if ($fee['description'] == "") {
                                                            ?>
                                                            <p class="text text-danger"><?php echo $this->lang->line('no_description'); ?></p>
                                                            <?php
                                                        } else {
                                                            ?>
                                                            <p class="text text-info"><?php echo $fee['description']; ?></p>
                                                            <?php
                                                        }
                                                        ?>
                                                    </div>
                                                    <?php
                                                }
                                                ?>
                                            </td>
                                            <td class="<?php echo $cls; ?>"><?php
                                                if ($fee['date'] != "xxx") {
                                                    echo date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($fee['date']));
                                                } else {
                                                    echo $fee['date'];
                                                }
                                                ?></td>
                                            <td><?php echo $fee['category']; ?></td>
                                            <td><?php echo $fee['type']; ?></td>
                                            <td class="<?php echo $cls; ?> text text-center"><?php echo $fee['payment_mode']; ?></td>
                                            <td class="text text-center"><?php echo $payment_status; ?></td>
                                            <td class="text text-right"><?php echo ($currency_symbol . $fee['amount']); ?></td>
                                            <td class="<?php echo $cls; ?> text text-right"><?php echo ($currency_symbol . $fee['fine']); ?></td>
                                            <td class="<?php echo $cls; ?> text text-right"><?php echo ($currency_symbol . $fee['discount']); ?></td>
                                            <td class="<?php echo $cls; ?> text text-right"><?php echo ($currency_symbol . $total_row); ?></td>
                                            <td class="<?php echo $cls; ?>"><?php
                                                if ($paymentoption->is_active == "yes") {
                                                    if ($fee['date'] == "xxx") {
                                                        ?>
                                                        <a href="<?php echo base_url() . 'parent/payment/pay/' . $fee['feemastersid'] . '/' . $student['id'] ?>" class="btn btn-xs btn-primary pull-right myCollectFeeBtn"><i class="fa fa-paypal"></i> Paypal</a>
                                                        <?php
                                                    } else {
                                                    }
                                                }
                                                ?></td>
                                        </tr>
                                        <?php
                                    }
                                    ?>
                                </tbody>
                            </table>
                          </div>  
                            <?php
                        }
                        ?>
                        <h2 class="page-header"><?php echo $this->lang->line('transport_fees_details'); ?></h2>
                        <?php
                        if (empty($transport_fee)) {
                            ?>
                            <div class="alert alert-danger">
                                No Transport fees Found.
                            </div>
                            <?php
                        } else {
                            ?>
                          <div class="table-responsive">  
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th><?php echo $this->lang->line('payment_id'); ?></th>
                                        <th><?php echo $this->lang->line('date'); ?></th>
                                        <th class="text text-center"><?php echo $this->lang->line('mode'); ?></th>
                                        <th class="text text-right"><?php echo $this->lang->line('amount'); ?></th>
                                        <th class="text text-right"><?php echo $this->lang->line('fine'); ?></th>
                                        <th class="text text-right"><?php echo $this->lang->line('total'); ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $tot_trans_fee = 0;
                                    $count = 1;
                                    foreach ($transport_fee as $key => $value) {
                                        $tot_trans_fee = $tot_trans_fee + $value['amount'];
                                        ?>
                                        <tr>
                                            <td>
                                                <a href="#" data-toggle="popover" class="detail_popover" ><?php echo $value['id'] ?></a>
                                                <div class="fee_detail_popover" style="display: none">
                                                    <?php
                                                    if ($value['description'] == "") {
                                                        ?>
                                                        <p class="text text-danger"><?php echo $this->lang->line('no_description'); ?></p>
                                                        <?php
                                                    } else {
                                                        ?>
                                                        <p class="text text-info"><?php echo $value['description']; ?></p>
                                                        <?php
                                                    }
                                                    ?>
                                                </div>
                                            </td>
                                            <td>
                                                <?php echo date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($value['date'])); ?>
                                            </td>
                                            <td class="text text-center">
                                                <?php echo $value['payment_mode']; ?>
                                            </td>
                                            <td class="text text-right">
                                                <?php echo (($currency_symbol . $value['amount'])); ?>
                                            </td>
                                            <td class="text text-right">
                                                <?php echo (($currency_symbol . $value['amount_fine'])); ?>
                                            </td>
                                            <td class="text text-right">
                                                <?php echo ($currency_symbol . $total_row = number_format(($value['amount'] + $value['amount_fine']), 2, '.', '')); ?>
                                            </td>
                                        </tr>
                                        <?php
                                        $count++;
                                    }
                                    ?>
                                </tbody>
                            </table>
                          </div>  
                            <?php
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
</div>
</section>
</div>

<script>
    $(document).ready(function () {
        $('.detail_popover').popover({
            placement: 'right',
            title: '',
            trigger: 'hover',
            container: 'body',
            html: true,
            content: function () {
                return $(this).closest('td').find('.fee_detail_popover').html();
            }
        });
    });
</script>