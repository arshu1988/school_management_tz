<?php  ?><?php if($student['class']!='IX' AND $student['class']!='X' AND $student['class']!='9' AND $student['class']!='10'){?>


<?php  if($student['class']=='XI' OR $student['class']=='XII' OR $student['class']=='XI(sci)' OR $student['class']=='XI(Comm.)' OR $student['class']=='XII(SCi)' OR $student['class']=='XII(Comm.)' OR $student['class']=='11' OR $student['class']=='12') {?>
<div class="tab-pane active" id="half-marksheet">
                        <div class="col-sm-12">
                            <a href="#" class="download-marksheet text-green" data-html="half-marksheet"><i class="fa fa-download"></i>Download</a>
                            </div>

<?php foreach($subjectslist as $subject): if($subject['type']=='Co-Curriculum' AND ($subject['name']=='Attendance' OR $subject['name']=='Rank')): ?>
           
                                                    <?php foreach($examSchedule as $_exam): ?>
                                                        
                                                       
                                                        <?php if($_exam['exam_type']==1 && $_exam['exam_label']=="Half Yearly Exam"): ?>
                                                            
                                                            <?php foreach($_exam['exam_result'] as $_result): ?>
                                                                <?php if($subject['name']==$_result['exam_name']): ?>
                                                                    <?php 
                                                                    if ($_result['attendence'] == "pre") {
                                                                        $attdata=$_result['get_marks'].'/'.$_result['full_marks'];
                                                                    } else {
                                                                        $attdata=$_result['attendence'].'/'.$_result['full_marks'];
                                                                    }
                                                                    if($subject['name']=='Rank'){
$rank= strstr($attdata, '/', true);
}elseif($subject['name']=='Attendance'){
$attendance=$attdata;
}
                                                                    ?>
                                                                <?php endif; ?>
                                                            <?php endforeach; ?>
                                                            
                                                        <?php endif; ?>
														
														
														
                                                    <?php endforeach; ?>
                                                   
                                                
                                    
<?php endif; ?>
                                    <?php endforeach; ?>


                            <table class="table" >
                                <tbody>
                                    <tr>
                                        <td width="25%" align="left"><img src="<?php echo base_url() ?>uploads/school_content/logo/<?php echo $settinglist[0]['board_image']; ?>" class="img-thumbnail" alt="Board logo" height="100" width="100"></td>
                                        <td align="center" style="vertical-align:bottom;font-weight:600;width:50%;"><h4 ><?php echo '<b>'.$settinglist[0]['name'].'</b></br> <span style="font-size: 13px; font-weight: 600;">'.$settinglist[0]['address'] .'</span>';?></h4></td>
                                        <td width="25%" align="right"><img src="<?php echo base_url() ?>uploads/school_content/logo/<?php echo $settinglist[0]['image']; ?>" class="img-thumbnail" alt="logo" height="100" width="100"></td>
      
                                    </tr>
                                </tbody>
                            </table>
                            <h4 class="page-header"></h4>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="description-block">
                                        
                                        <h5 class="description-header text-center">Report Card</h5>
										<h5 class="description-header text-center">Class/Section: <?php echo $student['class']." ".$student['section']; ?></h5>
										<h5 class="description-header text-center">Academic Session : <?php echo $settinglist[0]['session'] ?></h5>
									</div>                                               
                                </div>
</div></br></br>

<table class="table" >
                                <tbody>
                                    <tr>
                                        <td width="33.33%" style="font-weight:600;" align="left">Student's Name: <?php echo $student['firstname'] . " " . $student['lastname']; ?></td>
<td width="33.33%" style="font-weight:600;" align="left">Date of Birth: <?php echo date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($student['dob'])); ?></td>
                                        
                                        <td width="33.33%" style="font-weight:600;" >Roll No. : <?php echo $student['roll_no']; ?></td>
      
                                    </tr>
<tr>
                                        <td width="33.33%" style="font-weight:600;" align="left">Father's Name: <?php echo $student['father_name']; ?></td>
                                        
                                        <td width="33.33%" style="font-weight:600;" >Mother's Name: <?php echo $student['mothers_name']; ?></td>
       <td width="33.33%" style="font-weight:600;" >Address: <?php echo $student['current_address']; ?></td>
                                    </tr>

                                </tbody>
                            </table>
                                
								
                            
                            <table class="mytable" id="editabledata" align="center">
                                <thead>
                                    <tr>
                                        <th style="text-align:center;" width="15%">Scholastic<br/>Areas:</th>
                                        <th style="text-align:center;" colspan="3" width="85%" >Half Yearly Exam</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr style="text-align:center;font-weight:600;">
                                        <th style="text-align:center;font-weight:600;">Sub Name</th>
                                                    <td style="text-align:center;font-weight:600;" width="12%">Theory</td>
                                                    <td style="text-align:center;font-weight:600;" width="16%">Practical</td>
                                                    <td style="text-align:center;font-weight:600;" width="16%">Total</td>
                                                   
                                        
                                    </tr>
                                    <?php $total_obtain_marks = 0;$total_marks = 0; ?>

                                    <?php foreach($subjectslist as $subject): if($subject['type']!='Co-Curriculum'):  ?>
                                    <tr style="text-align:center;font-weight:600;">
                                        <td style="text-align:center;font-weight:600;"><?php echo $subject['name'] ?></td>
                                                    <?php 
                                                        $obtain_marks = 0;
                                                        //$total_marks = 0;
                                                    ?>
                                                    <?php foreach($examSchedule as $_exam): $totaladd=false; ?>
                                                        
                                                       
                                                        <?php if($_exam['exam_type']==1 && $_exam['exam_label']=="Half Yearly Exam"): ?>
                                                            <td style="text-align:center;font-weight:600;">
                                                            <?php foreach($_exam['exam_result'] as $_result): ?>
                                                                <?php if($subject['name']==$_result['exam_name']): ?>
                                                                    <?php 
                                                                    if ($_result['attendence'] == "pre") {
                                                                        echo round($_result['get_marks']);
                                                                    } else {
                                                                        echo ($_result['attendence']);
                                                                    }
                                                                     
if($_result['attendence']!='OPT'){ $totaladd=true;
                                                                    $obtain_marks+=round($_result['get_marks']); 
                                                                    }
                                                                    ?>
                                                                <?php endif; ?>
                                                            <?php endforeach; ?>
                                                            </td>
                                                        <?php endif; ?>
														
														<?php if($_exam['exam_type']==1 && $_exam['exam_label']=="Practical"): ?>
                                                            <td style="text-align:center;font-weight:600;">
                                                            <?php foreach($_exam['exam_result'] as $_result): ?>
                                                                <?php if($subject['name']==$_result['exam_name']): ?>
                                                                    <?php 
                                                                    if ($_result['attendence'] == "pre") {
                                                                        echo round($_result['get_marks']);
                                                                    } else {
                                                                        echo ($_result['attendence']);
                                                                    }
                                                                    if($_result['attendence']!='OPT'){ $totaladd=true;
                                                                    $obtain_marks+=round($_result['get_marks']); 
                                                                    } 
                                                                    ?>
                                                                <?php endif; ?>
                                                            <?php endforeach; ?>
                                                            </td>
<td style="text-align:center;font-weight:600;"><?php if($totaladd){echo $obtain_marks;$total_obtain_marks+=$obtain_marks;$total_marks+=100;}else{echo "OPT";} ?></td>
                                                        <?php endif; ?>

														
                                                    <?php endforeach; ?>

                                                    
                                                    
                                                
                                    </tr>
<?php endif; ?>
                                    <?php endforeach; ?>
									 
                                </tbody>
								
                            </table>
							<br><br>
							
                          
                                
                                <?php  $percentage = $total_obtain_marks/$total_marks*100;
                                    
									$result = "";
                                    if ($percentage >= 60){
                                        $result = "I";
                                    } else if($percentage >= 45){
                                        $result = "II";
                                    } else if($percentage >= 35){
                                       $result = "III"; 
                                    } else {
                                        $result = "Fail"; 
                                    }
$ovarall_marks=round($total_obtain_marks,2).'/'.$total_marks; 
                                ?>
							
                            
                            <br><br>
                            
                                    <table class="table" id="editabledata" align="center" width="90%">
                                <tbody>
                                    <tr>
                                        <th  width="50%">Attendance: <?php echo $attendance;?> </th>
                                        <th  width="50%" >Result:<?php if($result=='Fail'){echo $result;}else{echo 'Pass';}?></th>
                                    </tr>
                                
                                

<tr>
<th width="50%" align="left">Rank: <?php echo $rank; ?></th>
<th  >%age Of Marks: <?php echo round($percentage,2).'%'; ?></th>
</tr>

<tr>
<th  align="left" style="width: 70%;" class="clickable-cell">Class Teacher Remark: <span class="cell-text" data-remarkfor="teacher_remark"><?php echo isset($extras['teacher_remark'])?$extras['teacher_remark']:''; ?></span><input class="cell-input" style="width:100%" type="hidden" ></th>
</tr>

<tr>
                                                
                                                <th width="50%" align="left" >Class Teacher's Signature</th>
                                                <th width="50%" >Principl's Signature</th>
                                            </tr>


                                        </tbody>
                                    </table>
                              </br></br>
							
                       

<style>
.mytable { border: 1px solid #eee; }
.mytable thead > tr > th { border-bottom: none; }
.mytable thead > tr > th, .mytable tbody > tr > th, .mytable tfoot > tr > th, .mytable thead > tr > td, .mytable tbody > tr > td, .mytable tfoot > tr > td { border: 1px solid #eee; }
</style>


<script>
$('#editabledata td').attr('contenteditable', 'true');
</script>
<?php }else{ ?>



<div class="tab-pane active" id="half-marksheet">
                        <div class="col-sm-12">
                            <a href="#" class="download-marksheet text-green" data-html="half-marksheet"><i class="fa fa-download"></i>Download</a>
                            </div>
                           
<?php foreach($subjectslist as $subject): if($subject['type']=='Co-Curriculum' AND ($subject['name']=='Attendance' OR $subject['name']=='Rank')): ?>
           
                                                    <?php foreach($examSchedule as $_exam): ?>
                                                        
                                                       
                                                        <?php if($_exam['exam_type']==1 && $_exam['exam_label']=="Half Yearly Exam"): ?>
                                                            
                                                            <?php foreach($_exam['exam_result'] as $_result): ?>
                                                                <?php if($subject['name']==$_result['exam_name']): ?>
                                                                    <?php 
                                                                    if ($_result['attendence'] == "pre") {
                                                                        $attdata=$_result['get_marks'].'/'.$_result['full_marks'];
                                                                    } else {
                                                                        $attdata=$_result['attendence'].'/'.$_result['full_marks'];
                                                                    }
                                                                    if($subject['name']=='Rank'){
$rank= strstr($attdata, '/', true);
}elseif($subject['name']=='Attendance'){

$attendance=$attdata;
}
                                                                    ?>
                                                                <?php endif; ?>
                                                            <?php endforeach; ?>
                                                            
                                                        <?php endif; ?>
														
														
														
                                                    <?php endforeach; ?>
                                                   
                                                
                                    
<?php endif; ?>
                                    <?php endforeach; ?> 


                            <table class="table" >
                                <tbody>
                                    <tr>
                                        <td width="25%" align="left"><img src="<?php echo base_url() ?>uploads/school_content/logo/<?php echo $settinglist[0]['board_image']; ?>" class="img-thumbnail" alt="Board logo" height="100" width="100"></td>
                                        <td align="center" style="vertical-align:middle;font-weight:600;width:50%;"><h2><?php echo '<b>'.$settinglist[0]['name'].'</b></br> <span style="font-size: 12px; font-weight: 600;">'.$settinglist[0]['address'] .'</span>';?></h2>
										
										 <div class="col-sm-12">
                                    <div class="description-block">
                                        
                                        <h5 class="description-header text-center">Report Card</h5>
										<h5 class="description-header text-center">Class/Section: <?php echo $student['class']." ".$student['section']; ?></h5>
										<h5 class="description-header text-center">Academic Session : <?php echo $settinglist[0]['session'] ?></h5>
									</div>                                               
                                </div>
										
										</td>
                                        <td width="25%" align="right"><img src="<?php echo base_url() ?>uploads/school_content/logo/<?php echo $settinglist[0]['image']; ?>" class="img-thumbnail" alt="logo" height="100" width="100"></td>
      
                                    </tr>
                                </tbody>
                            </table>
                         

<table class="table" >
                                <tbody>
                                    <tr>
                                        <td width="50%" style="font-weight:600;" align="left">Student's Name: <?php echo $student['firstname'] . " " . $student['lastname']; ?></td>
                                        
                                        <td width="50%" style="font-weight:600;" >Roll No. : <?php echo $student['roll_no']; ?></td>
      
                                    </tr>
<tr>
                                        <td width="50%" style="font-weight:600;" align="left">Father's Name: <?php echo $student['father_name']; ?></td>
                                        
                                        <td width="50%" style="font-weight:600;" >Mother's Name: <?php echo $student['mothers_name']; ?></td>
      
                                    </tr>
<tr>
                                        <td width="50%" style="font-weight:600;" align="left">Date of Birth: <?php echo date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($student['dob'])); ?></td>
                                        
                                        <td width="50%" style="font-weight:600;" >Address: <?php echo $student['current_address']; ?></td>
      
                                    </tr>
                                </tbody>
                            </table>
</br></br>
                            <table class="mytable" id="editabledata">
                                <thead>
                                    <tr>
                                        <th style="text-align:center;" width="15%">Scholastic<br/>Areas:</th>
                                        <th style="text-align:center;" colspan="6" width="85%" >Half Yearly Exam</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr style="text-align:center;font-weight:600;">
                                        <th style="text-align:center;font-weight:600;" width="20%">Sub Name</th>
                                                    <td style="text-align:center;font-weight:600;" width="12%">Per Test</td>
                                                    <td style="text-align:center;font-weight:600;" width="16%">Note Book</td>
                                                    <td style="text-align:center;font-weight:600;" width="16%">Sub Enrichment</td>
                                                    <td style="text-align:center;font-weight:600;" width="16%">Theory</td>
                                                    <td style="text-align:center;font-weight:600;" width="16%">Total</td>
                                                    <td style="text-align:center;font-weight:600;" width="9%">Grade</td>
                                        
                                    </tr>
                                    <?php $total_obtain_marks = 0;$total_marks = 0; ?>
                                    <?php foreach($subjectslist as $subject): if($subject['type']!='Co-Curriculum'):?>
                                    <tr style="text-align:center;font-weight:600;">
                                        <td style="text-align:center;font-weight:600;"><?php echo $subject['name'] ?></td>
                                                    <?php 
                                                        $obtain_marks = 0;
                                                        //$total_marks = 0;
                                                    ?>
                                                    <?php foreach($examSchedule as $_exam):  ?>
                                                        <?php if($_exam['exam_type']==1 && $_exam['exam_label']=="Per Test"): ?>
                                                            <td style="text-align:center;font-weight:600;">
                                                            <?php foreach($_exam['exam_result'] as $_result): ?>
                                                                <?php if($subject['name']==$_result['exam_name']): ?>
                                                                    <?php 
                                                                    if ($_result['attendence'] == "pre") {
                                                                        echo round($_result['get_marks']);
                                                                    } else {
                                                                        echo ($_result['attendence']);
                                                                    }
                                                                    $obtain_marks+=round($_result['get_marks']); 
                                                                    ?>
                                                                <?php endif; ?>
                                                            <?php endforeach; ?>
                                                            </td>
                                                        <?php endif; ?>
                                                        <?php if($_exam['exam_type']==1 && $_exam['exam_label']=="Note Book"): ?>
                                                            <td style="text-align:center;font-weight:600;">
                                                            <?php foreach($_exam['exam_result'] as $_result): ?>
                                                                <?php if($subject['name']==$_result['exam_name']): ?>
                                                                    <?php 
                                                                    if ($_result['attendence'] == "pre") {
                                                                        echo round($_result['get_marks']);
                                                                    } else {
                                                                        echo ($_result['attendence']);
                                                                    }
                                                                    $obtain_marks+=round($_result['get_marks']); 
                                                                    ?>
                                                                <?php endif; ?>
                                                            <?php endforeach; ?>
                                                            </td>
                                                        <?php endif; ?>
                                                        <?php if($_exam['exam_type']==1 && $_exam['exam_label']=="Sub Enrichment"): ?>
                                                            <td style="text-align:center;font-weight:600;">
                                                            <?php foreach($_exam['exam_result'] as $_result): ?>
                                                                <?php if($subject['name']==$_result['exam_name']): ?>
                                                                <?php 
                                                                    if ($_result['attendence'] == "pre") {
                                                                        echo round($_result['get_marks']);
                                                                    } else {
                                                                        echo ($_result['attendence']);
                                                                    }
                                                                    $obtain_marks+=round($_result['get_marks']); 
                                                                    ?>
                                                                <?php endif; ?>
                                                            <?php endforeach; ?>
                                                            </td>
                                                        <?php endif; ?>
                                                        <?php if($_exam['exam_type']==1 && $_exam['exam_label']=="Half Yearly Exam"): ?>
                                                            <td style="text-align:center;font-weight:600;">
                                                            <?php foreach($_exam['exam_result'] as $_result): ?>
                                                                <?php if($subject['name']==$_result['exam_name']): ?>
                                                                    <?php 
                                                                    if ($_result['attendence'] == "pre") {
                                                                        echo round($_result['get_marks']);
                                                                    } else {
                                                                        echo ($_result['attendence']);
                                                                    }
                                                                    $obtain_marks+=round($_result['get_marks']); 
                                                                    ?>
                                                                <?php endif; ?>
                                                            <?php endforeach; ?>
                                                            </td>
                                                        <?php endif; ?>
                                                    <?php endforeach; ?>
                                                    <td style="text-align:center;font-weight:600;"><?php echo $obtain_marks;$total_obtain_marks+=$obtain_marks;$total_marks+=100; ?></td>
                                                    <td style="text-align:center;font-weight:600;">
                                                        <?php if (!empty($gradeList)): ?>
                                                            <?php foreach ($gradeList as $key => $value): ?>
                                                                <?php if (round($obtain_marks) >= $value['mark_from'] && $obtain_marks <= $value['mark_upto']): ?>
                                                                    <?php echo trim($value['name']); ?>
                                                                <?php break;endif; ?>
                                                            <?php endforeach; ?>
                                                        <?php endif; ?>
                                                    </td>
                                                
                                    </tr>
<?php endif; ?>
                                    <?php endforeach; ?>
                                    
                                    
                                </tbody>

                            </table>
                           
                            <br>
							
                           
                                
                                <?php  $percentage = $total_obtain_marks/$total_marks*100;
                                    
									$result = "";
                                    if ($percentage >= 60){
                                        $result = "I";
                                    } else if($percentage >= 45){
                                        $result = "II";
                                    } else if($percentage >= 35){
                                       $result = "III"; 
                                    } else {
                                        $result = "Fail"; 
                                    }
$overall_marks=round($total_obtain_marks,2).'/'.$total_marks;
                                ?>
                               
<table class="mytable" width="100%" >
                                        <tbody>
                                            <tr style="text-align:center;font-weight:600;">
                                                <td width="33.33%" align="left" style="font-weight:600;text-align: center;">Overall Marks: <?php echo $overall_marks; ?> </td>
                                                <td width="33.33%" align="left" style="font-weight:600;text-align: center;">%age Of Marks: <?php echo round($percentage,2).'%'; ?></td>
                                                <td width="33.33%" align="left" style="font-weight:600;text-align: center;">Rank: <?php echo $rank; ?></td>
                                            </tr>

                                        </tbody>
                                    </table>
                                           


                                                                                
                                
                           
							
                            <br>
							<h5 style="text-align:center;font-weight:600;">Co-Scholastic Area( 3Point Grading Scale A,B,C,)</h5>
                            <table class="mytable" align="center" width="50%" style="text-align:center;" id="editabledata">
                                <thead>
                                    <tr>
                                        <th style="text-align:center;" width="50%">Sub<br/></th>
                                        <th style="text-align:center;" width="50%" >Grade</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    

                                    <?php foreach($subjectslist as $subject): if($subject['type']=='Co-Curriculum' AND ($subject['name']!='Attendance' AND $subject['name']!='Rank')): ?>
                                    <tr style="text-align:center;font-weight:600;">
                                        <td style="text-align:center;font-weight:600;"><?php echo $subject['name'] ?></td>
                                                    
                                                    <?php foreach($examSchedule as $_exam): ?>
                                                        
                                                       
                                                        <?php if($_exam['exam_type']==1 && $_exam['exam_label']=="Half Yearly Exam"): ?>
                                                            <td style="text-align:center;font-weight:600;">
                                                            <?php foreach($_exam['exam_result'] as $_result): ?>
                                                                <?php if($subject['name']==$_result['exam_name']): ?>
                                                                    <?php 
                                                                    if ($_result['attendence'] == "pre") {
                                                                        echo $_result['get_marks'];
                                                                    } else {
                                                                        echo $_result['attendence'];
                                                                    }
                                                                    
                                                                    ?>
                                                                <?php endif; ?>
                                                            <?php endforeach; ?>
                                                            </td>
                                                        <?php endif; ?>
														
														
														
                                                    <?php endforeach; ?>
                                                   
                                                
                                    </tr>
<?php endif; ?>
                                    <?php endforeach; ?>
									 
                                </tbody>
								
                            </table>
                            

                            
                            <br>
                            <div class="row">
                                <div class="col-sm-12">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td width="33.33%" align="left" style="font-weight:600;">Attendance: <?php echo $attendance;?> </td>
                                                <td width="33.33%" align="left" style="font-weight:600;" class="clickable-cell">Remark: <span class="cell-text" data-remarkfor="teacher_remark"><?php echo isset($extras['teacher_remark'])?$extras['teacher_remark']:''; ?></span><input class="cell-input" type="hidden" ></td>
                                                <td width="33.33%" align="left" style="font-weight:600;">Result:<?php if($result=='Fail'){echo $result;}else{echo 'Pass';}?></td>
                                            </tr>
<tr>
                                                <td width="33.33%" align="left" style="font-weight:600;">Date: <?php echo date("d.m.Y") ;?></td>
                                                <td width="33.33%" align="left" style="font-weight:600;">Class Teacher</td>
                                                <td width="33.33%" align="left" style="font-weight:600;">Principle</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
							
							  <br>
                            <div class="row">
                                <div class="col-sm-12">
								 <div class="col-sm-12" style="    text-align: center;">
								 <h5><b>Instruction</b></h5>	
								  <h6>Grading Scale for scholastic area : Grades are awarded on  8 Point Grading Scale as follow </h6>	
								 </div>
                                    <table class="table my_ins_table">
                                        <tbody>
											<tr>
											<th>Marks Rank</th>
										<?php foreach ($gradeList as $key => $value): ?>
										      <?php echo "   <th>" ;?>
													<?php echo '('.round($value['mark_from']).'-';echo round($value['mark_upto']).')';?>
                                                <?php echo "   </th>" ;?>
												
                                    <?php endforeach; ?>
											</tr>
												<tr>
											<td>Grade</td>
										<?php foreach ($gradeList as $key => $value): ?>
										      <?php echo "   <td>" ;?>
													<?php echo trim($value['name']); ?>								
                                                <?php echo "   </td>" ;?>				
                                    <?php endforeach; ?>
											</tr>
							 </tbody>
                                    </table>
                                </div>
                            </div>
						
                            </div>
                        </div> 

<style>
.mytable { border: 1px solid #eee; }
.mytable thead > tr > th { border-bottom: none; }
.mytable thead > tr > th, .mytable tbody > tr > th, .mytable tfoot > tr > th, .mytable thead > tr > td, .mytable tbody > tr > td, .mytable tfoot > tr > td { border: 1px solid #eee; }
.my_ins_table thead > tr > th, .my_ins_table tbody > tr > th, .my_ins_table tfoot > tr > th, .my_ins_table thead > tr > td, .my_ins_table tbody > tr > td, .my_ins_table tfoot > tr > td { border: 1px solid #eee; }
.img-thumbnail {
	height: 100px;
}


</style>



<?php }} ?>