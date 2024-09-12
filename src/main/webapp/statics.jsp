<!DOCTYPE html>
<html>
<head>
    <title>Product Statistics</title>
    <style>
        .main {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 90vh;
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
    <h2>Product Statistics</h2>

<div class="statistics">
    <table>
        <thead>
            <tr>
                <th>
                    Total number of products
                </th>
                <th>
                    Total Price
                </th>
            </tr>
        </thead>
        <tbody>
        <tr>
            <td>${numberOfProducts}</td>
            <td>${totalPrice}</td>
        </tr>
        </tbody>
    </table>
</div>
</div>
</body>
</html>
