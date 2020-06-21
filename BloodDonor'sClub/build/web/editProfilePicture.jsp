<!DOCTYPE html>
<html>
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- JQuery -->
        <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
        <script>
            $(document).ready(function () {
                var readURL = function (input) {
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();

                        reader.onload = function (e) {
                            $('.avatar').attr('src', e.target.result);
                        }

                        reader.readAsDataURL(input.files[0]);
                    }
                }
                $(".file-upload").on('change', function () {
                    readURL(this);
                });
            });
        </script>
        <style>
            .avatar{
                width: 150px;
                height: 150px;
            }
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
        <%
            String phone=(String)session.getAttribute("phone");
        %>
        <div class="text-center mt-5">
            <form action="ProfileSaveServlet" method="post" enctype="multipart/form-data">
                <img style="border-radius: 150px;" src="getProfileImage.jsp?phone=<%=phone%>" class="avatar img-circle img-thumbnail" alt="avatar">
                <h6>Upload a different photo...</h6>
                <input type="file" name="image" class="text-center center-block file-upload mt-3"/><br>
                <input type="submit" value="Update Picture" class="btn btn-danger mt-3"/>
            <br>
            </form>
        </div>
        <div class="footer">
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>