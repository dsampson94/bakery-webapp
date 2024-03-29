
<%@page import="com.bakerysystem.Model.Product"%>
<!DOCTYPE html>
<html lang="en">
    <title>Admin</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
    <style>
        body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
        body {font-size:16px;}
        .w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
        .w3-half img:hover{opacity:1}
    </style>
    <body>
        <!-- Sidebar/menu -->
        <nav class="w3-sidebar w3-white w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
            <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
            <div class="w3-container">
                
                <h3 class="w3-padding-64"><b>ADMIN</b></h3>
            </div>
            <div class="w3-bar-block">
                <a href="" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">DASHBOARD</a> 
                <a href="admin_customersrm.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">CUSTOMERS</a> 
                <a href="admin_productsrm.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">PRODUCTS</a> 
                <a href="admin_categoriesrm.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">CATEGORIES</a> 
                <a href="admin_ordersrm.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">ORDERS</a> 
            </div>
        </nav>

        <!-- Top menu on small screens -->
        <header class="w3-container w3-top w3-hide-large w3-white w3-xlarge w3-padding">
            <a href="javascript:void(0)" class="w3-button w3-white w3-margin-right" onclick="w3_open()">?</a>
            <span>The Dough Knot</span>
        </header>

        <!-- Overlay effect when opening sidebar on small screens -->
        <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

        <!-- !PAGE CONTENT! -->
        <div class="w3-main" style="margin-left:340px;margin-right:40px">

            <!-- Header -->
            <div class="w3-container" style="margin-top:80px" id="showcase">

            </div>

            <!-- Display Details -->
            <editor-fold defaultstate="collapsed" desc="">
                <div id="accinfo">
                    <form action="account" method="post">
                        <% ServletContext sc = request.getServletContext(); %>
                        <% Product prod = (Product) session.getAttribute("pid");%>
                        <label for="fn"><b><%= cust.getFirstName()%></b></label></br>
                        <label for="ln"><b><%= cust.getLastName()%></b></label></br>
                        <label for="tel"><b><%= cust.getTelephonehome()%></b></label></br>
                        <label for="telm"><b><%= cust.getTelephonemobile()%></b></label></br>
                        <label for="em"><b><%= cust.getEmail()%></b></label></br>
                        <input type="hidden" name="cust" value="<%= cust.getCustomerId()%>">
                        <a href="account_editinfo.jsp"<button type="submit">Edit Details</button>
                    </form>
                </div>
            </editor-fold>
            <script>
                // Script to open and close sidebar
                function w3_open() {
                    document.getElementById("mySidebar").style.display = "block";
                    document.getElementById("myOverlay").style.display = "block";
                }

                function w3_close() {
                    document.getElementById("mySidebar").style.display = "none";
                    document.getElementById("myOverlay").style.display = "none";
                }
            </script>
    </body>
</html>
