package com.assignment.web_servlet.servlets;

import com.assignment.web_servlet.models.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/catalog/products")
public class Products extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        int id = Integer.parseInt(req.getParameter("id"));
        double price = Double.parseDouble(req.getParameter("price"));

        if (name.isEmpty()){
            req.setAttribute("error", "Name or id cannot be empty");
            req.getRequestDispatcher("error.jsp").forward(req, resp);
        }
        HttpSession session = req.getSession();
        List<Product> products = (List<Product>) session.getAttribute("products");

        if(products==null || products.isEmpty())
        {
            products = new ArrayList<Product>();
        }

        Product product = new Product(id, name, price, session.getId());
        ProductManager.add(product);

        products.add(product);
        session.setAttribute("products", products);
        System.out.println("Product is added successfully");

        resp.sendRedirect("/catalog/products");

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Product> products = ProductManager.getProducts();
        req.setAttribute("products", products);

        req.getRequestDispatcher("/allProducts.jsp").forward(req, resp);
    }

}
