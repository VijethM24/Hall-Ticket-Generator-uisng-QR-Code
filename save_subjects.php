
<?php
date_default_timezone_set('Asia/Kolkata');
$current_date = date('Y-m-d');
include('../connect.php');
extract($_POST);
   $sql = "INSERT INTO `tbl_subject` (`class_id`,`subjectname`,`s_code`,`s_date`,`s_time`) VALUES ('$class_id','$subjectname','$subjectcode','$s_date','$s_timedata')";

 if ($conn->query($sql) === TRUE) {
      $_SESSION['success']=' Record Successfully Added';
     ?>
<script type="text/javascript">
window.location="../view_subject.php";
</script>
<?php
} else {
      $_SESSION['error']='Something Went Wrong';
?>
<script type="text/javascript">
window.location="../view_subject.php";
</script>
<?php } ?>



