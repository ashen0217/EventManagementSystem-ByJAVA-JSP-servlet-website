<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/stylesgayan.css">
    
    <title>Event Management System</title>
</head>
<body style="margin: 0px">

<div id="header" align="center">
    <div id="titleBox">Event Management Portal</div>
    <div id="btnLogin">
        <div class="alignLeft" style="padding-right: 5px;padding-top: 5px">Gayan |</div>
        <div class="alignLeft" style="padding-top: 5px;padding-right: 10px" onclick="location.href='../../index.php'">
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
    <button class="subnavbtn" style="font-weight: normal;" >Insert</button>
    <div class="subnav-content">
      <a id="" href="Insertfood.jsp" style="text-decoration:none;">Food</a>
      <a id="" href="Insertbeverage.jsp" style="text-decoration:none;">Beverage</a>        
   	</div>      
    	</div>
        
   </div>
    
   <div>
         <div class="subnav" >
    <button class="subnavbtns" style="">View </button>
    
    
    <div class="subnav-content">
      <a  href="searchfood.jsp" style="text-decoration:none;">Food Stock</a>   
      <a id="sidebarSelected" href="searchbeverage.jsp" style="text-decoration:none;">Beverage Stock</a>    
   	</div>      
    	</div>
        
   </div>
   
        
       <!--a--> 
        
    </div>

    <div id="content">
      
<!-- Gayan-->
 
 
  <c:if test="${param.successD eq 1}">
     <div> 
	<script>
	alert("Your data is successfully deleted !");	
	</script>

	 </div>
	</c:if>
	
	<c:if test="${param.successF eq 1}">
     <div> 
	<script>
	alert("Your data is successfully updated !");	
	</script>

	 </div>
	</c:if>

<form method="" action="">

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
%>

<table id="srh" >

<tr>
<th>Item Id</th>
<th>Item Name</th>
<th>Quantity</th>
<th>TavernId</th>
<th>BarmanId</th>
<th>Supplier</th>
<th>Price</th>
<th>Action</th>

</tr>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM beverage";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	x=resultSet.getInt(1); 
%>

<tr>

<td><%=resultSet.getString(1)%></td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getInt(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getString(5) %></td>
<td><%=resultSet.getString(6) %></td>
<td><%=resultSet.getDouble(7) %></td>
<td> 

	
 <div id="btnn2">
        
 <a style="text-decoration:none;" href="updatebeverage.jsp?id=<%=resultSet.getString(1)%>&name=<%=resultSet.getString(2) %>&qty=<%=resultSet.getInt(3) %>&kitchen=<%=resultSet.getString(4) %>&cheff=<%=resultSet.getString(5) %>&supp=<%=resultSet.getString(6)%>&price=<%=resultSet.getInt(7)%>">
 <button type="button" name ="btn" class = "btnOrange" onClick="">Update</button>
 </a>
		
 </div>
 <div id="btnn3">
  <a style="text-decoration:none;" href="deletebeverage?id=<%=resultSet.getString(1)%>">
        <button type="button" name ="btn" class = "btnOrange" onClick="">
  			Delete
		</button>
 </a>
 </div>
		</td>
</tr>

<% }

} catch (Exception e) {
e.printStackTrace();
}

%>

</table>

</form>
  
<!-- /Gayan-->
 

        <div class="pagination">
            <div><<</div>
            <div>1</div>
            <div>2</div>
            <div>3</div>
            <div>>></div>
        </div>

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