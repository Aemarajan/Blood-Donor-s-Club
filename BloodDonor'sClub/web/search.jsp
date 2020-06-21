<%-- 
    Document   : search
    Created on : 15 Sep, 2019, 5:45:05 PM
    Author     : Raja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
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
        <div>
            <h1 class="text-danger text-center mt-5 mb-5">Search</h1>
            <div class="d-flex justify-content-center">
                <form class="col-lg-5 col-sm-12" action="searchShow" onsubmit="return validateSearch()" method="post"> 
                    <div><label id="error" class="text-danger font-weight-bold mb-3"></label></div>
                    <div class="input-group mb-3">
                        <label for="bloodgroup" class="col-5">Select Blood Group :</label>
                        <select class="form-control col-7" id="bloodgroup" name="bloodgroup">
                            <option value="0"  selected="">Select Blood group</option>
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
                        <label for="city" class="col-5">City :</label>
                        <select id="city" name="city" class="form-control col-7">
                            <option value="0"selected="">Select City</option>
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
                            <input type="submit" value="Submit" class="btn btn-danger px-4 py-2 mt-3">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="footer">
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
