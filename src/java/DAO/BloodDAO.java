/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import bean.LoginBean;
import bean.PostBean;
import bean.RegisterBean;
import bean.ProfileBean;
import controller.RegisterServlet;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Raja
 */
public class BloodDAO {
    public static Connection getConnection(){
        Connection con=null;
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            //here sonoo is database name, root is username and password
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donor","root",""); 
        }catch(ClassNotFoundException e){
            
        } catch (SQLException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }
    public static int checkLogin(LoginBean lb){
        int status=0;
        String sql="SELECT `username`,`password`,`phone_number` FROM `user_master` WHERE phone_number=? AND password=?";
        try{
            Connection con=BloodDAO.getConnection();
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, lb.getPhone_number());
            ps.setString(2, lb.getPassword());
            String phone=lb.getPhone_number();
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                status=1;
                String name=rs.getString("username");
                lb.setName(name);
                lb.setPhone_number(phone);
            }
        }catch(SQLException e){
        }
        return status;
    }
    public static int register(RegisterBean rg) throws FileNotFoundException{
        int status=0;
        String sql="INSERT INTO `user_master`(`username`, `password`, `dob`, `degree_id`, `course_id`, `hrd_id`, `address1`, `address2`, `address3`, `city`, `phone_number`, `email`, `bloodgroup_id`, `willing`, `pic`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
        try{
            Connection con=BloodDAO.getConnection();
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, rg.getName());
            ps.setString(2, rg.getPassword());
            ps.setString(3, rg.getDob());
            ps.setInt(4, rg.getDegree());
            ps.setInt(5, rg.getCourse());
            ps.setInt(6, rg.getHrd());
            ps.setString(7, rg.getAddress1());
            ps.setString(8, rg.getAddress2());
            ps.setString(9, rg.getAddress3());
            ps.setString(10, rg.getCity());
            ps.setString(11,rg.getPhone());
            ps.setString(12, rg.getEmail());
            ps.setInt(13, rg.getBloodgroup());
            ps.setString(14, rg.getWilling());
            File image = new File("C:\\Users\\Raja\\Documents\\BloodDonor'sClub\\BloodDonor'sClub\\web\\images\\avatar.png");
            FileInputStream inputStream = new FileInputStream(image);
            ps.setBinaryStream(15, (InputStream) inputStream, (int) (image.length()));
            status=ps.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
        return status;
    }
    public static ProfileBean getProfile(String phone){
        ProfileBean pb=new ProfileBean();
        try{
            Connection con=BloodDAO.getConnection();
            PreparedStatement ps=con.prepareStatement("SELECT * FROM `user_master` WHERE `phone_number`=?");
            ps.setString(1, phone);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                pb.setUsername(rs.getString("username"));
                pb.setPassword(rs.getString("password"));
                pb.setPhone(rs.getString("phone_number"));
                pb.setEmail(rs.getString("email"));
                pb.setCity(rs.getString("city"));
            }
        }catch(Exception e){}
        return pb;
    }
    public static List<RegisterBean> getGroup(int bloodgroup_id,String city){
        List<RegisterBean> list=new ArrayList<>();
        String sql="SELECT * FROM `user_master` WHERE bloodgroup_id=? AND city=?";
        try{
            Connection con=BloodDAO.getConnection();
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(1, bloodgroup_id);
            ps.setString(2, city);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                RegisterBean rb=new RegisterBean();
                rb.setName(rs.getString("username"));
                rb.setCity(rs.getString("city"));
                rb.setPhone(rs.getString("phone_number"));
                list.add(rb);
            }
        }catch(SQLException e){
        }
        return list;
    }
    public static int savePost(PostBean pb){
        int status=0;
        String sql="INSERT INTO `post_master`(`post_id`, `post_title`, `post_content`, `post_method`, `phone`) VALUES (?,?,?,?)";
        try{
            Connection con=BloodDAO.getConnection();
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(1, pb.getId());
            ps.setString(2, pb.getTitle());
            ps.setString(3, pb.getContent());
            ps.setString(4, pb.getPost_method());
            ps.setString(5, pb.getPhonenumber());
            status = ps.executeUpdate();
        }catch(SQLException e){
        }
        return status;
    }
}
