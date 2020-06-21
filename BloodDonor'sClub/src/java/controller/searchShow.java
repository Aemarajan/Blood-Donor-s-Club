/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.BloodDAO;
import bean.RegisterBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Raja
 */
public class searchShow extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Blood Donor's Club</title><title>Blood Doner's Registration</title>\n"
                    + "        \n"
                    + "        <meta charset=\"utf-8\">\n"
                    + "        <meta name=\"viewport\" content=\"width=device-width initial-scale=1.0\">\n"
                    + "        <!-- Bootstrap css -->\n"
                    + "        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n"
                    + "        <!-- External css -->\n"
                    + "        <link rel=\"stylesheet\" href=\"css/main.css\">\n"
                    + "        <!-- Bootstrap js -->\n"
                    + "        <script src=\"js/bootstrap.bundle.min.js\"></script>\n"
                    + "        <!-- fontawesome script -->\n"
                    + "        <script src=\"js/all.js\"></script>\n"
                    + "        <!-- External js -->\n"
                    + "        <script type=\"text/javascript\" src=\"js/main.js\"></script>\n"
                    + "        <!-- Shortcut icon -->\n"
                    + "        <link rel=\"shortcut icon\" href=\"images/blood.png\">\n"
                    + "        <!-- JQuery -->\n"
                    + "        <script type=\"text/javascript\" src=\"js/jquery-3.4.1.min.js\"></script>\n"
                    + "        <!-- JQuery Validation -->\n"
                    + "        <script type=\"text/javascript\" src=\"js/jquery.validate.js\"></script>");
            out.println("<style>"
                    + ".footer{"
                    + "position:absolute;"
                    + "left:0;"
                    + "bottom:0;"
                    + "width:100%;"
                    + "}"
                    + "</style>");
            out.println("</head>");
            out.println("<body class='text-center'>");
            HttpSession session = request.getSession(false);
            request.getRequestDispatcher("header.jsp").include(request, response);
            out.print("<h1 class='mt-5'>Search Result</h1>");
            int bloodgroup_id = Integer.parseInt(request.getParameter("bloodgroup"));
            String city = request.getParameter("city");
            int id = 1;
            List<RegisterBean> lb = BloodDAO.getGroup(bloodgroup_id, city);
            out.print("<div class='d-flex justify-content-center'><table border='1' class='table w-75 table-striped mt-5 table-hover'>");
            out.print("<thead class='thead-dark'><tr><th>Id</th><th>Name</th><th>Phone Number</th><th>City</th></tr></thead>");

            for (RegisterBean b : lb) {
                out.print("<tbody><tr><th>" + (id++) + "</th><td>" + b.getName() + "</td><td>" + b.getPhone() + "</td><td>" + b.getCity() + "</td></tr></tbody>");
            }
            out.println("</table></div>");
            out.println("</body>");
            out.println("<div class='footer'>");
            request.getRequestDispatcher("footer.jsp").include(request, response);
            out.println("</div>");
            out.println("</html>");

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
