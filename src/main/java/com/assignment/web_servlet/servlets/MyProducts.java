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

@WebServlet("/catalog/my-products")
public class MyProducts extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//        List<Product> products = (List<Product>) req.getSession().getAttribute("products");
//        if(products != null){
//            req.setAttribute("products", products);
//            System.out.println(products.size());
//        }

        HttpSession session = req.getSession();
        ArrayList<Product> products = (ArrayList<Product>) ProductManager.getSpecificProducts(session.getId());
        req.setAttribute("myProducts", products);


        req.getRequestDispatcher("/myProducts.jsp").forward(req, resp);
    }


}
