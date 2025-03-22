<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/stylesgayan.css">
    <title>Event Management System</title>

    <%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String qty = request.getParameter("qty");
		String price = request.getParameter("price");
		String kitchen = request.getParameter("kitchen");
		String cheff = request.getParameter("cheff");
		String supp = request.getParameter("supp");
	%>


</head>
<body style="margin: 0px">

<div id="header" align="center">
    <div id="titleBox">Event Management Portal</div>
    <div id="btnLogin">
        <div class="alignLeft" style="padding-right: 5px;padding-top: 5px">Kamal |</div>
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
        <div class="subnav" >
         <button class="subnavbtn" style="font-weight: normal;" >Insert </button>
    <div class="subnav-content">
      <a id="" href="Insertfood.jsp" style="text-decoration:none;">Food</a>
      <a id="" href="Insertbeverage.jsp" style="text-decoration:none;">Beverage</a>        
   			</div>      

		</div>
        
        
        

        <div>
            <div class="subnav">
                <button class="subnavbtn" style="font-weight: normal;">View</button>
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
        
   
        
        
        <form action="UpdateServlet" id="frm" method="post" style="padding-left:5%;">
            <label style="width:60%;font-weight:bold;font-size:17px"> Item Id:</label>
            <br/>
            <input type="text" readonly="readonly" name="txtId" id="txtId" value="<%= id %>" style="width:60%;"/>
            <br/>
            <label style="width:60%;font-weight:bold;font-size:17px"> Item Name:</label>
            <br/>
            <input type="text" name="txtName" id="txtName"value="<%= name %>" placeholder="Type Item Name.." style="width:60%;"/>
            <br/>
            <label style="width:60%;font-weight:bold;font-size:17px"> Item Qty:</label>
            <br/>
           <input type="text" name="txtQty" value="<%= qty %>" placeholder="Type Quantity.." id="txtQty" style="width:60%;"><br>
            <label style="width:60%;font-weight:bold;font-size:17px"> Price:</label> <br/>
            <input type="text" name="txtPrice" value="<%= price %>" placeholder="Type Price.." id="txtPrice" style="width:60%;"><br/>
             <label style="width:60%;font-weight:bold;font-size:17px"> Kitchen ID:</label>
            <br>
           <input type="text" name="txtKitchen" value="<%= kitchen %>" id="txtKitchen" placeholder="Type Kitchen Id.." style="width:60%;"/>
            <br/>
 <label style="width:60%;font-weight:bold;font-size:17px"> Chef ID:</label>
            <br>
           <input type="text" name="txtcheff" value="<%= cheff %>" id="txtcheff" placeholder="Type Cheff Id.." style="width:60%;"/>
            <br/>
            <label style="width:60%;font-weight:bold;font-size:17px"> Supplier:</label>
            <br>
           <input type="text" name="txtSupplier"value="<%= supp %>" id="txtSupplier" placeholder="Type Supplier.." style="width:60%;"/>
            <br/>
            <br/>
            <input type="submit"  id="Save" name="submit" style="width:60%;" class="btnRed"
                   value="Update">
            <br/>
            <script>
                function check() {
                    var msg = "#Fix these errors# \n";
                    var flag = 0;


                    if (document.getElementById("txtsid").value == "") {
                        msg = msg + "Id field cannot have a blank value \n";
                        flag = 1;
                    }
                    if (document.getElementById("name").value == "") {
                        msg = msg + "Name field cannot have a blank value \n";
                        flag = 1;
                    }
                    if (document.getElementById("mail").value == "") {
                        msg = msg + "mail field cannot have a blank value \n";
                        flag = 1;
                    }
                    if (document.getElementById("Type").value == "") {
                        msg = msg + "Type field cannot have a blank value \n";
                        flag = 1;
                    }
                    if (document.getElementById("pass").value == "" || document.getElementById("pass2").value == "") {
                        msg = msg + "Please fill Password column";
                        flag = 1;
                    }

                    if (document.getElementById("pass").value != document.getElementById("pass2").value) {

                        msg = msg + "Please check your password again";
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