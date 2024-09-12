package com.assignment.web_servlet.servlets;

import com.assignment.web_servlet.models.Product;
import com.assignment.web_servlet.models.ProductManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/catalog/status")
public class Status extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Product> products = ProductManager.getProducts();
        int numOfProducts = products.size();
        double totalPrice = products.stream().mapToDouble(Product::getPrice).sum();

        req.setAttribute("numberOfProducts", numOfProducts);
        req.setAttribute("totalPrice", totalPrice);

        req.getRequestDispatcher("/statics.jsp").forward(req, resp);
    }

}
