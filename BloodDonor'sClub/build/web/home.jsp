<%-- 
    Document   : home
    Created on : 4 Sep, 2019, 12:18:16 PM
    Author     : Raja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <!-- External css -->
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%
            String phone=(String) session.getAttribute("phone");
        %>    
        <div class="container-fluid">
            <div class="bg-light">
                <div class="d-flex justify-content-center">
                    <div class="post mt-3 mb-3" style="border: 2px black solid; border-radius: 2px;">
                        <div class="m-4">
                            <div class="post-h">
                                <img style="border-radius:40px;" src="getProfileImage.jsp?phone=<%=phone%>" class="profile">
                                <h6 style="display: inline;">Aemarajan</h6>
                                <h2>Blood Camp</h2>
                                <p>22/10/2019</p>
                                <span class="image-post">
                                    <img src="./images/blood11.jpg" alt="" style="border-radius:5px;" width="400px">
                                </span>
                            </div>
                            <div class="post-body mt-2">
                                <span>Coming sunday(27/10/2019) in menakchi mission hospital </span> <br>
                                <span>contect blood camp on their hospital. So intrested donors </span><br>
                                <span>can participate and save many of life.</span>
                            </div>
                            <div class="post-footer">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <%@include file="footer.jsp" %>
        </div>

    </body>
</html>
