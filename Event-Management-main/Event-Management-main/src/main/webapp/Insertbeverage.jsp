 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/stylesgayan.css">
    <title>Event Management System</title>
    
     
     
</head>
<body style="margin: 0px" id="frmm">

<div id="header" align="center">
    <div id="titleBox">Event Management Portal</div>
    <div id="btnLogin">
        <div class="alignLeft" style="padding-right: 5px;padding-top: 5px">Gayan</div>
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
       
        <div onclick="location.href='Order.jsp'">
            <div>Order Food</div>
        </div>
        
         <!--a-->
    
   <div id="">
         <div class="subnav" >
    <button class="subnavbtns" >Insert </button>
    <div class="subnav-content">
      <a  href="Insertfood.jsp" style="text-decoration:none;">Food</a>
      <a id="sidebarSelected" href="Insertbeverage.jsp" style="text-decoration:none;">Beverage</a>        
   	</div>      
    	</div>
        
   </div>
      <div>
         <div class="subnav" >
    <button class="subnavbtn"style="font-weight: normal;" >View </button>
    <div class="subnav-content">
      <a href="searchfood.jsp" style="text-decoration:none;">Food Stock</a>
      <a href="searchbeverage.jsp" style="text-decoration:none;">Beverage Stock</a> 
            
   	</div>      
    	</div>
        
   </div>
        
       <!--a--> 
        
    </div>

   
    <div id="content">
      
<!-- Gayan-->

<c:if test="${param.success eq 1}">
     <div> 
	<script>
	alert("Your data is successfully inserted !");	
	</script>

	 </div>
	</c:if>

 <div style="padding-left:5%;width:60%; float:left; ">
            <form action="Insertbeverage" id="frm" method="post">
    <%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>

	<%
		String id = request.getParameter("userId");
		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String dbName = "event";
		String userId = "root";
		String password = "1234";

		try {
		Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		int x;
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
	   
	try{ 
		connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
		statement=connection.createStatement();
		String sql ="SELECT max(BeverageId) FROM beverage ";
		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
		%>

                <label style="width:60%;font-weight:bold;font-size:17px">Item_ID:</label>
                <br/>


                <input style="width:90%;" type="text"  id="txtId" readonly value="<%=resultSet.getInt(1)+1%>" name="txtId" required
                       placeholder="Type Item Id..">
                       <label style="width:60%;font-weight:bold;font-size:17px">Item_Name:</label>
            
                 <br/>

                <input style="width:90%;" type="text"  id="txtName" value="" name="txtName" required
                       placeholder="Type Item Name.." >
                

                 <br/>
                <label style="width:80%;font-weight:bold;font-size:17px">Qty:</label>
                <br/>
               

                <input style="width:90%;" type="text" id="txtQty"
                       name="txtQty" value="" placeholder="Type Item Quentity..">

                <br/>               
                <label style="width:60%;font-weight:bold;font-size:17px"> Price:</label> <br/>
            <input type="text" name="txtPrice" value="" placeholder="Type Item Price.." id="txtPrice" style="width:90%;"><br/>
             <label style="width:60%;font-weight:bold;font-size:17px"> Tavern ID:</label>
            <br>
           <input type="text" name="txtKitchen" value="" id="txtKitchen" placeholder="Type Tavern Id.." style="width:90%;"/>
            <br/>
 <label style="width:60%;font-weight:bold;font-size:17px"> Barman ID:</label>
            <br>
           <input type="text" name="txtcheff" value="" id="txtcheff" placeholder="Type Barman's Id.." style="width:90%;"/>
                <br/>
             
                <label style="width:80%;font-weight:bold;font-size:17px">Supplier:</label>
                 <br/>
                <input style="width:90%;" value="" type="text" id="txtSupplier"
                       name="txtSupplier" placeholder="Type Supplier..">
                
         
             	 <br/>
                <br/>
                <input style="width:90%;font-weight:bold" type="submit" onClick="check()" class="btnRed"
                       name="Send" value="Insert">


<% 
		}
} catch (Exception e) {
e.printStackTrace();
}

%>
                <script>
                function check() {
                    var msg = "#Fix these errors# \n";
                    var flag = 0;


                    if (document.getElementById("txtId").value == "") {
                        msg = msg + "Id field cannot have a blank value \n";
                        flag = 1;
                    }
                    if (document.getElementById("txtName").value == "") {
                        msg = msg + "Name field cannot have a blank value \n";
                        flag = 1;
                    }
                    if (document.getElementById("txtQty").value == "") {
                        msg = msg + "Quentity field cannot have a blank value \n";
                        flag = 1;
                    }
                    if (document.getElementById("txtPrice").value == "") {
                        msg = msg + "Price field cannot have a blank value \n";
                        flag = 1;
                    }
                    if (document.getElementById("txtKitchen").value == "") {
                        msg = msg + "Kitchen ID field cannot have a blank value \n";
                        flag = 1;
                    }
                    if (document.getElementById("txtcheff").value == "") {
                        msg = msg + "Cheff ID field cannot have a blank value \n";
                        flag = 1;
                    }
                    if (document.getElementById("txtSupplier").value == "") {
                        msg = msg + "Supplier field cannot have a blank value \n";
                        flag = 1;
                    }

                    if (flag == 1) {
                        alert(msg);
                    }
                    else {
                        document.getElementById("frm").submit();
                    }

                }
            </script>


            </form>
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