<%-- 
    Document   : post_content
    Created on : 29 Sep, 2019, 5:26:01 PM
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
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="text-center mt-5 text-uppercase text-danger mb-5">
            <h1>Post Content</h1>
        </div>
        <div class="d-flex justify-content-center">
            <form class="col-lg-5 col-sm-12" action="PostController" method="post" enctype="multipart/form-data"> 
                <div class="input-group mb-3">
                    <label for="Tittle" class="col-5"><h5>Title :</h5></label>
                    <input type="text" id="title" name="title" class="form-control" placeholder="Enter Tittle"/>
                </div>
                <div class="input-group mb-4">
                    <label for="Content" class="col-5"><h5>Content :</h5></label>
                    <input type="text" id="content" name="content" class="form-control" placeholder="Enter Content"/>
                </div>
                <div class="input-group mb-4">
                    <label for="File" class="col-5"><h5>Upload File :</h5></label>
                    <input type="file" id="image" name="image" accept="image/*"/>
                </div>
                <div>
                    <div class="input-group mt-3">
                        <label class="col-5"></label>
                        <input type="submit" value="POST" class="btn btn-danger px-4 py-2 mt-3">
                    </div>
                </div>
            </form>
        </div>
        <div class="footer">
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
