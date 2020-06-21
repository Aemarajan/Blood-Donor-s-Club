<%-- 
    Document   : request_blood
    Created on : 2 Oct, 2019, 11:48:18 AM
    Author     : Raja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request - Blood</title>
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
            <h1>Request Blood</h1>
        </div>
        <div class="d-flex justify-content-center">
            <form class="col-lg-5 col-sm-12" action="" method="post" enctype="multipart/form-data"> 
                <div class="input-group mb-3">
                    <label for="blood_group" class="col-5"><h5>Blood Group :</h5></label>
                    <select class="form-control" id="bloodgroup" name="bloodgroup">
                        <option value="0" selected="" disabled="">Select Blood group</option>
                        <option value="1">A Positive</option>
                        <option value="2">B Positive</option>
                        <option value="3">O Positive</option>
                        <option value="4">AB Positive</option>
                        <option value="5">A Negative</option>
                        <option value="6">B Negative</option>
                        <option value="7">O Negative</option>
                        <option value="8">AB Negative</option>
                    </select>
                </div>
                <div class="input-group mb-4">
                    <label for="hospital_city" class="col-5"><h5>Hospital City :</h5></label>
                    <select id="city" name="city" class="form-control">
                        <option value="0" selected="" disabled="">Select City</option>
                        <option value="Madurai">Madurai</option>
                        <option value="Dindugul">Dindugul</option>
                        <option value="Theni">Theni</option>
                        <option value="Sivagangai">Sivagangai</option>
                        <option value="Viruthunagar">Viruthunagar</option>
                    </select>
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
