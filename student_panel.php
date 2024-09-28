<?php

    session_start();
    error_reporting(0);
    include('connect.php');

$q=mysqli_query($conn,"select * from tbl_student where id='".$_GET['id']."'");
$n=  mysqli_fetch_assoc($q);
$stname= $n['sfname'];



 
?>
<html>
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
         <link rel="stylesheet" href="bootstrap/bootstrap-theme.min.css">
       <script src="bootstrap/jquery.min.js"></script>
        <script src="bootstrap/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="css/admform.css"></link>
       
        
        <script type="text/javascript">
            function printpage()
            {
            var printButton = document.getElementById("print");
            printButton.style.visibility = 'hidden';
            window.print()
             printButton.style.visibility = 'visible';
             }
        </script>
    </head>

    <body style="background-image:url(./images/inbg.jpg) ">
      <form id="admincard" action="admincard.php" method="post">
            
      
    


      <center><td style="width:2%;"><img src="./uploadImage/Logo/1.png" width="8%"> </td></center>
      <center><td> <h1> <font color="red">BMS</font><font color="#111460"> Institute of Technology & Management</font></h1>
                    <h3><center><font color="#111460">Avalahalli, Doddaballapur Main Road, Bengaluru-560064</font></h3>
                </center>
                
                <center><font style="font-family:Verdana; font-size:18px;">
                    Phone : (0674)2492496, Fax : (0674)2490480
                    </font></center>
          <div class="container-fluid">
                            <div class="row">
                               <div class="col-sm-12">
      <center>  <table class="table table-bordered" style="font-family: Verdana">
                
                <tr>
                                              
                <br>
                <br>
                <center><font style="font-family:Arial Black; font-size:20px;">
                    ADMIT CARD (2022-23)</font></center>
                </td>
                    <td colspan="2" width="3%" >
                    
                        </td>
                 </tr>       
                 
                 
                 <tr>
                 <td style="width:4%;"> <center> <font style="font-family: Verdana;">Date</font> </td>
                    <td style="width:8%;" colspan="3"><font style="font-family: Verdana; font-weight: bold">
                        20th Sep 2023, Afternoon Session</font> </center> </td>
                 </tr>
                 
                 <tr>
                 <td style="width:4%;"><center> <font style="font-family: Verdana;">Time </font> </td>
                    <td style="width:8%;" colspan="3">  <font style="font-family: Verdana; font-weight: bold">
                        2:00 PM - 4:00 PM </font> </center></td>
                 </tr>
                 
                <tr>
                    <td> <center> <font style="font-family: Verdana;">SEM </font> </td>
                    <td colspan="3"><font style="font-family: Verdana; font-weight: bold">
                     <?php echo $sem ?></font></center> </td>
                </tr>
                
                <tr>
                     
                 <td style="width:4%;"><center>  <font style="font-family: Verdana;">Name  </font> </td>
                    <td style="width:8%;" colspan="3"><font style="font-family: Verdana; font-weight: bold">
                     <?php echo $stname ;?></font></center> </td>
                 </tr>
                 
                 <tr>
                     <td style="width:4%;"><center> <font style="font-family: Verdana;">Exam Center  </font></center> </td>
                    <td style="width:8%;" colspan="3">
                    
                    BMSIT 
                 </tr>
                <?php
                
                ?>
                 
                    </table>
                </div>
             </div>
          </div>
          
       
      </form>

   
        <table style="width:100%" border="0">
        <tr><td  ></td><td>
        <table style="width:100%"  id="myTable"  border="1">
                                        <thead>
                                            <tr>
                                                <th>Sl .no </th>    
                                                <th>Subject Name</th>
                                               
                                                <th>Subject Code</th>
                                                <th>Date</th>
                                                <th>Time </th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                    <?php 
                                    include 'connect.php';
                                    
                                  $sql1 = "SELECT * FROM  `tbl_subject`";
                                   $result1 = $conn->query($sql1);
                                   $count_sl = 1;
                                   while($row = $result1->fetch_assoc()) { 
                                
                                 
                                      ?>
                                            <tr>
                                                <td align="center"><?php echo $count_sl ;
                                                    $count_sl = $count_sl + 1; ?></td>
                                                <td align="center"><?php echo $row['subjectname']; ?></td>
                                                
                                                <td align="center"><?php echo $row['s_code']; ?></td>
                                                <td align="center"><?php echo $row['s_date']; ?></td>
                                                <td align="center"><?php echo $row['s_time']; ?></td>
                                            </tr>
                                          <?php } ?>
                                        </tbody>
                                    </table>

        </td><td></td></tr>
            </table>
                                    
            <center><font style="font-family: Verdana; font-weight: bold; font-size: 20px;"> Instructions to the Candidate</font></center><br>
          <font style="font-family: Verdana;  font-size: 13px;"> 
            <p style="margin-left: 100px; margin-right: 100px; font-family: Verdana;">
                1. This Admit Card must be presented for verification at the time of examination, along with at least one
                   original(not photocopied or scanned copy) and valid (not expired) photo identification card
                   (e.g : Aadhaar Card, Voter ID).
            </p>
            
            <p style="margin-left: 100px; margin-right: 100px; font-family: Verdana;">
                2. This Admit Card is valid only if the candidate's photograph and signature images are <b> legibly printed</b>.
                   Print this on an A4 sized paper using a laser printer preferably a color photo printer.
            </p>
            
            <p style="margin-left: 100px; margin-right: 100px; font-family: Verdana;">
                3. Candidates should occupy their alloted seats <b>25 minutes before</b> the scheduled start of the examination.
            </p>
            
            <p style="margin-left: 100px; margin-right: 100px; font-family: Verdana;">
                4. Candidates will not be allowed to enter the examination hall <b>30 minutes</b>
                after the commencement of the examination.
            </p>
            
            <p style="margin-left: 100px; margin-right: 100px; font-family: Verdana;">
                5. Mobile phones or any other Electronic gadgets are NOT ALLOWED inside the examination hall. There may not be any
                facility for the safe-keeping of your gadget outside the hall, so it may be easier to leave it at your residence.
            </p>
            
          </font>
          
          <center>
        <button id="print" onclick="printpage()" class="btn btn-primary" style="color: blue;">Print</button>
    </center>

    </body>
</html>