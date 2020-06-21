/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.BloodDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.LoginBean;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;
/**
 *
 * @author Raja
 */
public class LoginCheck extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        String phone_number=request.getParameter("phone_number");
        String password=request.getParameter("password");
        LoginBean lb=new LoginBean();
        lb.setPhone_number(phone_number);
        lb.setPassword(password);
        out.println(lb.getPhone_number());
        out.println(lb.getPassword());
        int status=BloodDAO.checkLogin(lb);
        if(status==1){
            HttpSession session=request.getSession(true);
            session.setAttribute("name",lb.getName());
            session.setAttribute("phone",lb.getPhone_number());
        }
        if(status==1){
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }else{
            request.getRequestDispatcher("invalid_user.jsp").forward(request, response);
        }
    }
}

