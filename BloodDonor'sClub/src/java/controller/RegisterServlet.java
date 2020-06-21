/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.BloodDAO;
import bean.RegisterBean;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Raja
 */
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        //SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
        //Date dob=formatter.parse(request.getParameter("dob"));
        String dob = request.getParameter("dob");
        int degree = Integer.parseInt(request.getParameter("degree"));
        int course = Integer.parseInt(request.getParameter("course"));
        int hrd = Integer.parseInt(request.getParameter("hrdradio"));
        String address1 = request.getParameter("address1");
        String address2 = request.getParameter("address2");
        String address3 = request.getParameter("address3");
        String city = request.getParameter("city");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        int bloodgroup = Integer.parseInt(request.getParameter("bloodgroup"));
        String willing = request.getParameter("willing");
        RegisterBean rg = new RegisterBean();
        rg.setName(name);
        rg.setPassword(password);
        rg.setDob(dob);
        rg.setDegree(degree);
        rg.setCourse(course);
        rg.setHrd(hrd);
        rg.setAddress1(address1);
        rg.setAddress2(address2);
        rg.setAddress3(address3);
        rg.setCity(city);
        rg.setPhone(phone);
        rg.setEmail(email);
        rg.setBloodgroup(bloodgroup);
        rg.setWilling(willing);
        /*out.println(rg.getName());
        out.println(rg.getPassword());
        out.println(rg.getDob());
        out.println(rg.getDegree());
        out.println(rg.getCourse());
        out.println(rg.getHrd());
        out.println(rg.getAddress1());
        out.println(rg.getAddress2());
        out.println(rg.getAddress3());
        out.println(rg.getCity());
        out.println(rg.getPhone());
        out.println(rg.getEmail());
        out.println(rg.getBloodgroup());
        out.println(rg.getWilling());*/
        int status = BloodDAO.register(rg);
        if (status == 0) {
            request.getRequestDispatcher("register_unsuccess.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("register_success.jsp").forward(request, response);
        }
    }
}