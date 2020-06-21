<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DAO.BloodDAO"%>
<%
    String phone=request.getParameter("phone");
    try{
        Connection con=BloodDAO.getConnection();
        PreparedStatement ps=con.prepareStatement("SELECT `pic`FROM `user_master` WHERE `phone_number`=?");
        ps.setString(1, phone);
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
            Blob blob=rs.getBlob("pic");
            byte byteArray[]=blob.getBytes(1,(int) blob.length());
            response.setContentType("image/gif");
            OutputStream os=response.getOutputStream();
            os.write(byteArray);
            os.flush();
            os.close();
        }else{
            System.out.println("No image found in this ID");
        }
    }catch(Exception e){
        
    }
%>