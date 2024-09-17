package com.example;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "AssignmentServlet", urlPatterns = {"/assignment"})
public class AssignmentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        
        String assignmentId = request.getParameter("id");
        
        
        if ("1".equals(assignmentId)) {
            request.getRequestDispatcher("/assignments/assignment1.jsp").forward(request, response);
        } else if ("2".equals(assignmentId)) {
            request.getRequestDispatcher("/assignments/assignment2.jsp").forward(request, response);
        } else {
            response.getWriter().println("<h1>未找到作业</h1>");
        }
    }
}
