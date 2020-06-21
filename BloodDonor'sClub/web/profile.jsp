<%@page import="bean.ProfileBean"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DAO.BloodDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/main.css">
        <script src="js/jquery-3.4.1.min.js"></script>
    </head>

    <%@include file="header.jsp" %>
    <div class="text-center text-danger mt-3">
        <p style="font-size: 50px; text-decoration: underline;">Profile</p>
    </div>
    <hr><br>
    <%            String phone = (String) session.getAttribute("phone");
        ProfileBean pb1 = (ProfileBean) request.getAttribute("Profile");
    %>
    <div class="container bootstrap snippet">
        <div class="row">
            <div class="col-md-3">
                <form action="editProfilePicture.jsp" method="post">
                <div class="text-center text-secondary">
                    <p class="h4">Profile Picture</p>
                    <img src="getProfileImage.jsp?phone=<%=phone%>" class="img-circle img-thumbnail" width="200px" alt="avatar">
                    <input type="submit" value="Update Profile Picture" class="btn btn-danger mt-3">
                </div>
                </form><br>
            </div>
            <div class="col-md-9">
                <div>
                    <div class="text-primary">
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="first_name"><h4>User name</h4></label>
                                <input type="text" class="form-control" id="username" name="username" value="<%=pb1.getUsername()%>" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="password"><h4>Password</h4></label>
                                <input type="text" class="form-control" name="password" id="password" value="<%=pb1.getPassword()%>" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="phone"><h4>Phone</h4></label>
                                <input type="text" class="form-control" name="phone" id="phone" value="<%=pb1.getPhone()%>" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="email"><h4>Email</h4></label>
                                <input type="email" class="form-control" name="email" id="email" value="<%=pb1.getEmail()%>" disabled>
                            </div>
                        </div>
                        <div class="form-group mb-5">
                            <div class="col-xs-6">
                                <label for="email"><h4>Location</h4></label>
                                <input type="text" class="form-control" id="location" name="location" value="<%=pb1.getCity()%>" disabled>
                            </div>
                        </div>
                        <!-- <form action="ProfileServlet1" method="post">
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <br>
                                    <button class="btn btn-lg btn-danger" type="submit">Edit</button>
                                </div>
                            </div>
                        </form> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp" %>
</html>