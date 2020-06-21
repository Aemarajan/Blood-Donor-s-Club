<%-- 
    Document   : request
    Created on : 16 Sep, 2019, 3:07:25 PM
    Author     : Raja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .footer{
                position: absolute;
                left: 0;
                bottom: 0;
                width: 100%;
            }
            .request a{
                text-decoration: none;
            }
            .request a:hover{
                background-color: black;
                color: white;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="d-flex justify-content-center">
            <div class="mt-5">
                <div>
                    <a href="post_content.jsp" style="display:block;text-decoration: none;padding: 20px 40px 20px 40px;border-radius: 10px;" class="bg-danger text-light mt-5 text-uppercase">
                        Post Content
                    </a>
                    <a href="request_blood.jsp" style="display:block;text-decoration: none;padding: 20px 40px 20px 40px;border-radius: 10px;" class="bg-danger text-light mt-5 text-uppercase">
                        Request Blood
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <%@include file="footer.jsp" %>
    </div>
</body>
</html>
