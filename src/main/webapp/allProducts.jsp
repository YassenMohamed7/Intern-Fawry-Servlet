<%@ page import="com.assignment.web_servlet.models.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.assignment.web_servlet.models.ProductManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Products</title>


    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }


        nav {
            background-color: #333;
            padding: 10px;
        }

        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            display: inline-block;
            margin-right: 15px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            padding: 10px;
        }

        nav ul li a:hover {
            background-color: #444;
        }



        .main {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 800px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
            color: #555;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        .button button{
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

    </style>

</head>
<body>
<div class="nav">
    <nav>
        <ul>
            <li><a href="/catalog/products">All-Products</a></li>
            <li><a href="/catalog/my-products">My-Products</a></li>
            <li><a href="/catalog/status">Status</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </nav>
</div>
<div class="main">
    <div class="container">
        <h1>All Products</h1>
        <table>
            <thead>
            <tr>
                <th>Product Name</th>
                <th>Product ID</th>
                <th>Product Price</th>
            </tr>
            </thead>
            <tbody>
            <%
//                List<Product> products = ProductManager.getProducts();
                List<Product> products = (List<Product>) request.getAttribute("products");
                if(products != null){
                    for (Product product : products) {
            %>
            <tr>
                <td><%= product.getId() %></td>
                <td><%= product.getName() %></td>
                <td><%= product.getPrice() %></td>
            </tr>
            <% } %>
            <%}%>
            </tbody>
        </table>
        <div class="button">
            <a href="/addProduct.jsp">
                <button>Add product</button>
            </a>
        </div>
    </div>
</div>

</body>
</html>
