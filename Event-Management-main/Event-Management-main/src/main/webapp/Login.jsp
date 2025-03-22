 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../css/styles.css">
     <link rel="stylesheet" href="css/mystyles.css">
        <link rel="stylesheet" href="css/styles.css">
    <title>Event Management System</title>
    
     
     
</head>
<body style="margin: 0px" id="frmm">

<div id="header" align="center">
    <div id="titleBox">Event Management Portal</div>
    <div id="btnLogin">
        <div class="alignLeft" style="padding-right: 5px;padding-top: 5px"> |</div>
        <div class="alignLeft" style="padding-top: 5px;padding-right: 10px" onclick="location.href='../../index.html'">
            Logout
        </div>
        <div style="margin-left: 35px;margin-top: 45px">
            <img src="Images/user.png" height="60px" width="60px">
        </div>
    </div>
</div>

<div id="container" style="height: 500px">

  <div id="sidebar">
       
    <div onclick="location.href='Login.jsp'">
            <div>Login</div>
        </div>
        
         <!--a--><!--a--> 
        
  </div>
 <c:if test="${param.unsuccess eq 1}">
	<script>
	alert("Please check your user name and password !");	
	</script>
	</c:if> 
   
    <div id="content">
      
<!-- Gayan-->

  <div class="alignLeft"
                 style="width: 30%;text-align: center;margin: 175px 60px 60px 40px;font-size: 30px;color: #737373">
                Welcome to <br>
                The Event Management Portal
            </div>

            <div class="alignLeft">
                <div id="logtext">
                    <div class="hthree">
                        Login
                    </div>
                    <form method="POST" action="LoginServlet">
                        <div style="margin-top: 50px">
                          <div class="alignLeft" style="margin-top: 5px">UserId</div>
                            <input type="text" name="uid" style="margin-left: 74px;width: 300px">
                        </div>
                      <div style="margin-top: 15px">
                            <div class="alignLeft" style="margin-top: 5px">Password</div>
                            <input type="password" name="pass" style="margin-left: 45px;width: 300px">
                        </div>
                      <div style="width: 100%;text-align: center">
                        <button class="submitbtn" name="signIn" style="margin-top: 50px">Sign In</button>
                      </div>
                    </form>
                </div>
            </div>
        </div>
<!-- /Gayan-->



    </div>
</div>



<div id="footer">
    <div style="padding: 20px">
        <div class="alignLeft">
            <div style="font-weight: bold">Subscribe Now</div>
            <div class="alignLeft" style="margin-top: 10px;margin-left: 15px">
                <input type="text" placeholder="Enter email"
                       style="width: 250px;border-radius: 20px;border-color: white">
            </div>
            <button class="btnRed" style="margin-left: 15px;margin-top: 10px">Subscribe</button>
        </div>
        <div class="alignLeft" style="margin-left: 150px">
            <div style="font-weight: bold">Contact Us</div>
            <div style="margin-left: 40px">
                <div style="margin-top: 10px">
                    Address&nbsp;&nbsp;|&nbsp;&nbsp;No:123, Abc Road, Colombo
                </div>
                <div style="margin-top: 10px">
                    Email Address&nbsp;&nbsp;|&nbsp;&nbsp;abc@gmail.com
                </div>
                <div style="margin-top: 10px">
                    Telephone&nbsp;&nbsp;|&nbsp;&nbsp;011-1234567
                </div>
            </div>
        </div>
        <div class="alignLeft" style="margin-left: 150px">
            <div style="font-weight: bold">Join Us</div>
            <div style="margin-left: 40px;margin-top: 10px">
                Share your feedback
            </div>
            <img src="Images/facebook.png" alt="facebook" height="30px" width="30px"
                 style="margin-left: 50px;margin-top: 10px">
        </div>
    </div>
</div>

</body>
</html>