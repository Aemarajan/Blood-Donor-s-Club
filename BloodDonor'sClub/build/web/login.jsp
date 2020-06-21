<%-- 
    Document   : login
    Created on : 28 Jul, 2019, 4:24:19 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <!-- Bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- External css -->
        <link rel="stylesheet" href="css/main.css">
        <!-- Bootstrap js -->
        <script src="js/bootstrap.bundle.min.js"></script>
        <!-- fontawesome script -->
        <script src="js/all.js"></script>
        <!-- External js -->
        <script type="text/javascript" src="js/main.js"></script>
        <!-- Shortcut icon -->
        <link rel="shortcut icon" href="images/blood.png">
        <!-- JQuery -->
        <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript" src="js/jquery.validate.js"></script>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <section class="backimage">
        <div class="mt-5 heightlogin modal-dialog text-center d-flex align-items-center">
            <div class="col-sm-8 main-section">
                <div class="modal-content">
                    <div class="col-12 user-img">
                        <img src="images/963_logo.jpg" width="150px"/>
                    </div>
                    <form class="col-12" action="LoginCheck" onsubmit="return validate()" method="post">
                        <div><label id="info" class="text-danger font-weight-bold mb-3"></label></div>
                        <div class="form-group">
                            <input type="text" id="phone_number" name="phone_number" class="form-control" placeholder="Enter Phone Number"/> 
                        </div>
                        <div class="form-group">
                            <input type="password" id="password" name="password" class="form-control user" placeholder="Enter Password"/>
                        </div>
                        <button type="submit" class="btn btnlogin"><i class="fas fa-sign-in-alt"></i> Login</button>
                    </form>
                    <span class="text-light">If you don't have account?</span> <a href="register.jsp" class="text-light font-weight-bold mb-3" style='text-decoration: none;'>Register Here</a>
                </div>    
            </div>
        </div>
        </section>
        <!-- Bootstrap script -->
        <script src="js/bootstrap.bundle.min.js"></script>
        <%@include file="footer.jsp" %>
    </body>
</html>