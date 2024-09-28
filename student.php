<?php session_start();?>
<?php include('head.php');?>
<link rel="stylesheet" href="popup_style.css">

   <?php
  include('connect.php');
if(isset($_POST['btn_login']))
{
$unm = $_POST['email'];

$passw = hash('sha256', $_POST['password']);

function createSalt()
{
    return '2123293dsj2hu2nikhiljdsd';
}
$salt = createSalt();
$pass = hash('sha256', $salt . $passw);

 $sql = "SELECT * FROM tbl_student WHERE semail='" .$unm . "' and password = '". $pass."'";
    $result = mysqli_query($conn,$sql);
    $row  = mysqli_fetch_array($result);
    
     $_SESSION["id"] = $row['id'];
    //  $_SESSION["username"] = $row['username'];
     $_SESSION["password"] = $row['password'];
     $_SESSION["semail"] = $row['semail'];
    //  $_SESSION["fname"] = $row['fname'];
    //  $_SESSION["lname"] = $row['lname'];
    //  $_SESSION["image"] = $row['image'];
     $count=mysqli_num_rows($result);
     if($count==1 && isset($_SESSION["semail"]) && isset($_SESSION["password"])) {
    {       
        ?>
         <div class="popup popup--icon -success js_success-popup popup--visible">
  <div class="popup__background"></div>
  <div class="popup__content">
    <h3 class="popup__content__title">
      Success 
    </h1>
    <p>Login Successfully</p>
    <p>
     <?php echo "<script>setTimeout(\"location.href = 'tim.php';\",1500);</script>"; ?>
    </p>
  </div>
</div>
     <?php
    }
}
else {?>
    <div class="popup popup--icon -error js_error-popup popup--visible">
 <div class="popup__background"></div>
 <div class="popup__content">
   <h3 class="popup__content__title">
     Error 
   </h1>
   <p>Invalid Email or Password</p>
   <p>
     <a href="student.php"><button class="button button--error" data-for="js_error-popup">Close</button></a>
   </p>
 </div>
</div>  
        <?php
       
         }
    
    }
?>

    <div id="main-wrapper">
        <div class="unix-login">
             <?php
             $sql_login = "select * from manage_website"; 
             $result_login = $conn->query($sql_login);
             $row_login = mysqli_fetch_array($result_login);
             ?>
             <img src="BMSIT.png" >
		    <div style= "width: 50%; height: 50px;">
	    	<div class="name">
				<h1><center><font color="red">BMS</font><font color="#111460"> Institute of Technology & Management</font></center></h1>
				<h3><center><font color="#111460">Avalahalli, Doddaballapur Main Road, Bengaluru-560064</font></center></h3>
			</div>
			</div>
            <div class="container">
            <div class="left"></div>
					<div class="right">
                        <!-- <div class="login-content card"> -->
                                <form method="POST">
                                <div class="formbox">
                                        <input type="text" id="username" name="email" class="form-control" placeholder="Email" required="">
                                        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required="">
                                   <center> <button type="submit" name="btn_login" class="btn btn-primary btn-flat m-b-30 m-t-30">Login</button></center>
                                  </div>
                                </form>
                           </div>
                        </div>
                    </div>
                </div>
            </div>
	
    
    <script src="js/lib/jquery/jquery.min.js"></script>

    <script src="js/lib/bootstrap/js/popper.min.js"></script>
    <script src="js/lib/bootstrap/js/bootstrap.min.js"></script>

    <script src="js/jquery.slimscroll.js"></script>

    <script src="js/sidebarmenu.js"></script>

    <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>

    <script src="js/custom.min.js"></script>

</body>
<style>
body {
    padding:0px;
    background-color: beige;
    background-size: cover;
    font-family: sans-serif;
}
img{
		float:left;
		height:180px;
		margin-left:260px;
		margin-top:170px;
		width:180px;
}
.name{
    color: hsl(0,50%,20%);
    padding-left: 8px;
    padding-top: 370px;
	float:left-side;
    width: 100%;
}
.container{
	float:right;
    width: 44%;
    height: 570px;
    background: #fff;
    margin-top:10px;
	margin-right:80px;
    border: 2px solid #fff;
    box-shadow: 30px 30px 30px rgba(0, 0, 0.5);
    border-top-left-radius: 50px;
    border-bottom-left-radius: 10px;
    border-top-right-radius: 30px;
    border-bottom-right-radius: 30px;
}

.container .left{
    float: left;
    width: 50%;
    height: 510px;
	margin-top:10px;
    background:url("https://amail.app.param.ai/static/assets/img/illustrations/login.svg");
    background-size: cover;
}
.container .right{
    float: right;
    width: 40%;
    height: 70px;
    margin-right:20px;
    margin-top:100px;
    box-sizing: border-box;
}
.formbox{
    width: 100%;
    /* padding: 30px 20px; */
    box-sizing: 100%;
    height: 100%;
    background: #fff;
}
.formbox input{
    width: 100%;
    margin-bottom: 20px;
}
.formbox input[type="text"],
.formbox input[type="password"]
{
    border: none;
    border-bottom: 2px solid #a6af13;
    outline: none;
    height: 40px;
}
.formbox input[type="text"]:focus,
.formbox input[type="password"]:focus
{
    border-bottom: 2px solid #262626;
}
.formbox input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    color: #fff;
    background: #6495ED;
    width: 50%;
    cursor: pointer;
    margin: 0px 0;
    border-radius: 20px;

}
.formbox button[type="submit"]:hover{
    background: #a6af13;
}
. a{
    color: blue;
    font-size: 12px;
    font-weight: bold;
}
.form-group .psw{
    float: right;
}  
</style>
</html>