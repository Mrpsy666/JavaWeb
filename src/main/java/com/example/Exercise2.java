package com.example;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "exercise2Servlet", urlPatterns = {"/exercise2"})
public class Exercise2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        
        String assignmentId = request.getParameter("id");
        
        
        if ("1".equals(assignmentId)) {
            request.getRequestDispatcher("/exercise2/first/inputName.jsp").forward(request, response);
        } else if ("2".equals(assignmentId)) {
            request.getRequestDispatcher("/exercise2/second/main.jsp").forward(request, response);
        } else {
            response.getWriter().println("<h1>未找到作业</h1>");
        }
    }

}

