<%-- 
    Document   : header
    Created on : 28 Jul, 2019, 6:28:34 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <style>
            .profile{
                width: 30px;
                height: 30px;
            }
        </style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-expand-md navbar-dark bg-dark">
            <a href="<%  if (session != null) {
                            if (session.getAttribute("name") != null) {
                    %> 
                    home.jsp
                    <% 
                            } else {
                    %>
                    index.jsp
                    <%
                            }
                        }
                    %>"                             
                    class="navbar-brand"><i class="fas fa-bold h3" style="margin-bottom: -1px; margin-right: 2px;"></i>lood Doner's Club</a>
		<button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarMenu">
			<ul class="navbar-nav ml-auto">
                                    <%
                                	if (session != null) {
                                            if (session.getAttribute("name") != null) {
                                                String name = (String) session.getAttribute("name");
                                                String phone=(String) session.getAttribute("phone");
                                    %>
                                    <li class="nav-item ml-3"><a href="home.jsp" class="nav-link">Home</a></li> 
                                    <li class="nav-item dropdown ml-3">
                                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Notification</a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="#">Notify 1</a>
                                            <a class="dropdown-item" href="#">Notify 2</a>
                                        </div>
                                    </li>
                                    <li class="nav-item ml-3"><a href="search.jsp" class="nav-link">Search</a></li>
                                    <li class="nav-item ml-3"><a href="request.jsp" class="nav-link">Request</a></li>
                                    <li class="nav-item dropdown ml-3">
                                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"><img style="border-radius:40px;" src="getProfileImage.jsp?phone=<%=phone%>" class="profile mr-2"/><%=name%></a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="profileServlet?phone=<%=phone%>">Profile</a>
                                            <a class="dropdown-item" href="SignOut" method="post">Sign Out</a>
                                        </div>
                                    </li>
                                    <% 
                                            } else {
                                    %>
                                    <li class="nav-item ml-3"><a href="login.jsp" class="nav-link">Login</a></li>
                                    <li class="nav-item ml-3"><a href="register.jsp" class="nav-link">Register</a></li>
                                    <%
                                            }
                                        }
                                    %>                             
				</li>
			</ul>
		</div>
	</nav>
</body>
</html>