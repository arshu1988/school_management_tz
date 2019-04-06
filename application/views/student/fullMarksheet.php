<?php  ?><?php  if($student['class']=='IX' OR $student['class']=='X' OR $student['class']=='9' OR $student['class']=='10'){?>

<div class="tab-pane" id="full-marksheet">
                            <div class="col-sm-12">
                            <a href="#" class="download-marksheet text-green" data-html="full-marksheet"><i class="fa fa-download"></i>Download</a>
                            </div>

                            <?php foreach($subjectslist as $subject): if($subject['type']=='Co-Curriculum' AND ($subject['name']=='Attendance' OR $subject['name']=='Rank')): ?>
           
                                                    <?php foreach($examSchedule as $_exam): ?>
                                                        
                                                       
                                                        <?php if($_exam['exam_type']==1 && ($_exam['exam_label']=="Annual Exam" OR $_exam['exam_label']=="Half Yearly Exam")): ?>
                                                            
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
                            <table class="mytable">
                                <thead>
                                    <tr>
                                        <th style="text-align:center;" width="10%">Scholastic<br/>Areas:</th>
                                        <th align="center" width="45%" style="text-align:center;" colspan="6">Annual Exam</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th style="text-align:center;font-weight:600;">Sub Name</th>
                                                    <td style="text-align:center;font-weight:600;" width="5%">Per Test </td>
                                                    <td style="text-align:center;font-weight:600;" width="7%">Note Book </td>
                                                    <td style="text-align:center;font-weight:600;" width="9%">Sub Enrichment </td>
                                                    <td style="text-align:center;font-weight:600;" width="7%">Theory </td>
                                                    <td style="text-align:center;font-weight:600;" width="9%">Total</td>
                                                    <td style="text-align:center;font-weight:600;" width="5%">Grade</td>
                                                   
                                                </tr>
                                    </tr>
                                    <?php $total_obtain_marks = 0;$total_marks = 0; ?>
                                    <?php foreach($subjectslist as $subject): if($subject['type']!='Co-Curriculum'): ?>
                                    <tr style="text-align:center;font-weight:600;">
                                        <td style="text-align:center;font-weight:600;"><?php echo $subject['name'] ?></td>
                                                    <?php $obtain_marks = 0;?>
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
                                                                    if($_result['attendence']!='OPT'){ $totaladd=true;
                                                                    $obtain_marks+=round($_result['get_marks']); 
                                                                    } 
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
                                                                    if($_result['attendence']!='OPT'){ $totaladd=true;
                                                                    $obtain_marks+=round($_result['get_marks']); 
                                                                    } 
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
                                                                    if($_result['attendence']!='OPT'){ $totaladd=true;
                                                                    $obtain_marks+=round($_result['get_marks']); 
                                                                    } 
                                                                    ?>
                                                                <?php endif; ?>
                                                            <?php endforeach; ?>
                                                            </td>
                                                        <?php endif; ?>
                                                        <?php if($_exam['exam_type']==1 && ($_exam['exam_label']=="Annual Exam" OR $_exam['exam_label']=="Half Yearly Exam")): ?>
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
                                                    <?php endforeach; ?>
                                                    <td style="text-align:center;font-weight:600;"><?php echo $obtain_marks;$total_obtain_marks+=$obtain_marks;$total_marks+=100; ?></td>
                                                    <td style="text-align:center;font-weight:600;">
                                                        <?php if (!empty($gradeList)): ?>
                                                            <?php foreach ($gradeList as $key => $value): ?>
                                                                <?php if (round($obtain_marks) >= $value['mark_from'] && round($obtain_marks) <= $value['mark_upto']): ?>
                                                                    <?php echo $value['name']; ?>
                                                                <?php break;endif; ?>
                                                            <?php endforeach; ?>
                                                        <?php endif; ?>
                                                    </td>
                                                <?php $obtain_marks = 0; ?>
                                                
                                                   
                                                    
                                                
                                            
                                    </tr>
<?php endif; ?>
                                    <?php endforeach;?>
                                    
                                    
                                </tbody>
<tfoot>

									<tr><th colspan="7"><b style="margin-left:15px;">8 Point Grading Scale:</b> 
									<?php foreach ($gradeList as $key => $value): ?>
                                                                
                                             
                                                
                                                   
													<?php echo trim($value['name']); ?>
													<?php echo '('.round($value['mark_from']).'-';echo round($value['mark_upto']).'),';?>
                                                
												
                                    <?php endforeach; ?>
                                    </th></tr>
                                        
								</tfoot>
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
                            <h5 style="text-align:center;font-weight:600;">Co-Scholastic Area( 5 Point Grading Scale A,B,C,D,E)</h5>
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
                                                        
                                                       
                                                        <?php if($_exam['exam_type']==1 && ($_exam['exam_label']=="Annual Exam" OR $_exam['exam_label']=="Half Yearly Exam")): ?>
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
                            

                            
                            
                            
                            <br><br>
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
							
						
                            </div>
                        </div> 


<?php }else  if($student['class']=='XI' OR $student['class']=='XII' OR $student['class']=='XI(sci)' OR $student['class']=='XI(Comm.)' OR $student['class']=='XII(SCi)' OR $student

['class']=='XII(Comm.)' OR $student['class']=='11' OR $student['class']=='12') {?>

<div class="tab-pane" id="full-marksheet">
                            <div class="col-sm-12">
                            <a href="#" class="download-marksheet text-green" data-html="full-marksheet"><i class="fa fa-download"></i>Download</a>
                            </div>

                            <?php foreach($subjectslist as $subject): if($subject['type']=='Co-Curriculum' AND ($subject['name']=='Attendance' OR $subject['name']=='Rank')): ?>
           
                                                    <?php foreach($examSchedule as $_exam): ?>
                                                        
                                                       
                                                        <?php if($_exam['exam_label']=="Yearly Exam"): ?>
                                                            
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
<br><br>
                            <table class="mytable" id="editabledata" align="center" width="100%">
                                <thead>
                                    <tr>
                                        <th style="text-align:center;" width="15%">Scholastic<br/>Areas:</th>
                                        <th style="text-align:center;" width="35%" colspan="3">Term-1</th>
                                        <th style="text-align:center;" width="35%" colspan="3">Term-2</th>
                                        <th style="text-align:center;" width="15%" colspan="1">Average Marks</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th style="text-align:center;font-weight:600;">Sub Name</th>
                                                    <td style="text-align:center;font-weight:600;" >Theory </td>
                                                    <td style="text-align:center;font-weight:600;" >Practical </td>
                                                    <td style="text-align:center;font-weight:600;" >Total </td>
                                                    
                                                    <td style="text-align:center;font-weight:600;" >Theory</td>
                                                    <td style="text-align:center;font-weight:600;">Practical</td>                         
                                                    <td style="text-align:center;font-weight:600;" >Total </td>
                                                                 
                                                    <td style="text-align:center;font-weight:600;" >AverageTotal</td>
                                                    
                                                    
                                                </tr>
                                    </tr>
                                    <?php $total_obtain_marks = 0;$total_marks = 0; $avg_total_obtain_marks = 0;  ?>
                                    <?php foreach($subjectslist as $subject): if($subject['type']!='Co-Curriculum'): ?>
                                    <tr style="text-align:center;   font-weight:600; ">
                                        <td style="text-align:center;font-weight:600;"><?php echo $subject['name'] ?></td>
                                                    <?php $obtain_marks = 0;?>
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

<td style="text-align:center;font-weight:600;"><?php 
if($totaladd){$avg_total_obtain_marks=$obtain_marks; echo $obtain_marks;$total_obtain_marks+=$obtain_marks;$total_marks+=100;}else{echo "OPT";} ?></td>
                                                        <?php endif; ?>
														
														
                                                    <?php endforeach; ?>
                                                    
                                                    
                                                <?php $obtain_marks = 0; ?>
                                                <?php foreach($examSchedule as $_exam): $totaladd=false; ?>
                                                    
                                                    
                                                    <?php if($_exam['exam_type']==2 && $_exam['exam_label']=="Yearly Exam"): ?>
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
													
													<?php if($_exam['exam_type']==2 && $_exam['exam_label']=="Practical"): ?>
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
													
                                                <?php endforeach;?>
                                                    <td style="text-align:center;font-weight:600;"><?php if($totaladd){$avg_total_obtain_marks=$avg_total_obtain_marks+$obtain_marks;  echo $obtain_marks;$total_obtain_marks+=$obtain_marks;$total_marks+=100; }else{echo "OPT";} ?></td>

                                                    
<td style="text-align:center;font-weight:600;"><?php if($totaladd){ echo $avg_total_obtain_marks= $avg_total_obtain_marks/2;}else{echo "OPT";}?></td>

                                                
                                            
                                    </tr>
 <?php endif; ?>
                                    <?php endforeach;?>
                                    
                                    
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
                           
                            
                            
                        </div>
	
	
<?php }else{ ?>						


<div class="tab-pane" id="full-marksheet">
                            <div class="col-sm-12">
                            <a href="#" class="download-marksheet text-green" data-html="full-marksheet"><i class="fa fa-download"></i>Download</a>
                            </div>

                          <?php foreach($subjectslist as $subject): if($subject['type']=='Co-Curriculum' AND ($subject['name']=='Attendance' OR $subject['name']=='Rank')): ?>
           
                                                    <?php foreach($examSchedule as $_exam): ?>
                                                        
                                                       
                                                        <?php if($_exam['exam_label']=="Yearly Exam"): ?>
                                                            
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

                            <table class="mytable" id="editabledata" align="center" width="100%">
                                <thead>
                                    <tr>
                                        <th style="text-align:center;" width="10%">Scholastic<br/>Areas:</th>
                                        <th style="text-align:center;" width="40%" colspan="5">Term-1</th>
                                        <th style="text-align:center;" width="40%" colspan="5">Term-2</th>
                                        <th style="text-align:center;" width="10%" colspan="1">Average Marks</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th style="text-align:center;font-weight:600;">Sub Name</th>
                                                    <td style="text-align:center;font-weight:600;" >Per Test</td>
                                                    <td style="text-align:center;font-weight:600;" >Note Book</td>
                                                    <td style="text-align:center;font-weight:600;" >Sub Enrichment</td>
                                                    <td style="text-align:center;font-weight:600;">Theory</td>
                                                    <td style="text-align:center;font-weight:600;" >Total</td>
                                                    
                                                    <td style="text-align:center;font-weight:600;" >Per Test</td>
                                                    <td style="text-align:center;font-weight:600;" >Note Book</td>
                                                    <td style="text-align:center;font-weight:600;" >Sub Enrichment</td>
                                                    <td style="text-align:center;font-weight:600;" >Theory</td>
                                                    <td style="text-align:center;font-weight:600;" >Total</td>
                                                                 
                                                    <td style="text-align:center;font-weight:600;" >Total</td>
                                                    
                                                    
                                                </tr>
                                    </tr>
                                    <?php $total_obtain_marks = 0;$total_marks = 0; $avg_total_obtain_marks = 0;  ?>
                                    <?php foreach($subjectslist as $subject): if($subject['type']!='Co-Curriculum'): ?>
                                    <tr style="text-align:center;   font-weight:600; ">
                                        <td style="text-align:center;font-weight:600;"><?php echo $subject['name'] ?></td>
                                                    <?php $obtain_marks = 0;?>
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
<td style="text-align:center;font-weight:600;"><?php $avg_total_obtain_marks=$obtain_marks; echo $obtain_marks;$total_obtain_marks+=$obtain_marks;$total_marks+=100; ?></td>
                                                        <?php endif; ?>
                                                    <?php endforeach; ?>
                                                    
                                                    
                                                <?php $obtain_marks = 0; ?>
                                                <?php foreach($examSchedule as $_exam):  ?>
                                                    <?php if($_exam['exam_type']==2 && $_exam['exam_label']=="Per Test"): ?>
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
                                                    <?php if($_exam['exam_type']==2 && $_exam['exam_label']=="Note Book"): ?>
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
                                                    <?php if($_exam['exam_type']==2 && $_exam['exam_label']=="Sub Enrichment"): ?>
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
                                                    <?php if($_exam['exam_type']==2 && $_exam['exam_label']=="Yearly Exam"): ?>
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
                                                <?php endforeach;?>
                                                    <td style="text-align:center;font-weight:600;"><?php $avg_total_obtain_marks=$avg_total_obtain_marks+$obtain_marks;  echo $obtain_marks;$total_obtain_marks+=$obtain_marks;$total_marks+=100; ?></td>

                                                    
<td style="text-align:center;font-weight:600;"><?php  echo $avg_total_obtain_marks= $avg_total_obtain_marks/2;?></td>

                                                
                                            
                                    </tr>
<?php endif; ?>
                                    <?php endforeach;?>
                                    
                                    
                                </tbody>
<tfoot>

									<tr><th colspan="12"><b style="margin-left:15px;">8 Point Grading Scale:</b> 
									<?php foreach ($gradeList as $key => $value): ?>
                                                                
                                             
                                                
                                                   
													<?php echo trim($value['name']); ?>
													<?php echo '('.round($value['mark_from']).'-';echo round($value['mark_upto']).'),';?>
                                                
												
                                    <?php endforeach; ?>
                                    </th></tr>
                                        
								</tfoot>
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
                                           


                                                                                
                                
                           
							
                            <br><br>
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
                            

                            
                            <br><br>
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
							
						
                            </div>
                        
                            
                           




<?php }?>



