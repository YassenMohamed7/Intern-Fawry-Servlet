package com.assignment.web_servlet.servlets;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/login")
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("/login.jsp");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(username.equals("Yassin") && password.equals("Y")) {
            request.getSession().setAttribute("username", username);
            request.getRequestDispatcher("/welcome.jsp").forward(request, response);
        }
        else
        {
            PrintWriter printWriter = response.getWriter();
            printWriter.println("Login failed");
            response.sendRedirect("/login.jsp");
        }
    }
}