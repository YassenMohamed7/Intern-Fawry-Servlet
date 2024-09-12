package com.assignment.web_servlet.filters;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter("/catalog/*")
public class CatalogFilter extends HttpFilter {


    @Override
    public void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        String username =(String) req.getSession().getAttribute("username");
        if(username == null) {
            req.getRequestDispatcher("/login").forward(req, res);
            return;
        }
        chain.doFilter(req, res);

    }
}
