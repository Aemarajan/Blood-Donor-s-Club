<%-- 
    Document   : index
    Created on : 28 Jul, 2019, 2:00:28 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <link rel="shortcut icon" href="./images/blood.png">
        <!-- JQuery -->
        <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
        <title>Blood Doner's Club</title>
        <style>
            img,.carousel{
                width: 720px;
            }
            .marginleft{
                margin-left: 180px;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <!-- Carousel -->
        <div class="container mt-3">
            <div id="myCarousel" class="carousel slide marginleft" data-ride="carousel">
            <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ul>
                <!-- The slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/blood11.jpg" alt="Bloodimage1" width="1100" height="500">
                    </div>
                    <div class="carousel-item">
                        <img src="images/blood21.jpg" alt="Bloodimage2" width="1100" height="500">
                    </div>
                    <div class="carousel-item">
                        <img src="images/blood31.jpg" alt="Bloodimage3" width="1100" height="500">
                    </div>
                </div>
  
                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </div>
        <!-- End Carousel -->
        <br>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
