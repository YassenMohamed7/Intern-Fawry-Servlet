<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>

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
    <div class="welcome-container">
        <h1>Welcome ${sessionScope.get("username")}  to Our Website!</h1>
        <p>We're glad to have you here. Explore our content and enjoy your stay.</p>
        <a href="/catalog/my-products" class="btn">Products</a>
    </div>
</div>
<style>
    /* Reset some basic styles */
    body, h1, p, a {
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
        font-family: 'Arial', sans-serif;
        background-color: #282c34;
        color: white;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
    }

    .welcome-container {
        background-color: #3b3f47;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
    }

    h1 {
        font-size: 36px;
        margin-bottom: 20px;
        color: #61dafb;
    }

    p {
        font-size: 18px;
        margin-bottom: 30px;
        color: #ddd;
    }

    .btn {
        display: inline-block;
        padding: 12px 25px;
        background-color: #61dafb;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    .btn:hover {
        background-color: #21a1f1;
    }

    @media (max-width: 600px) {
        h1 {
            font-size: 28px;
        }

        p {
            font-size: 16px;
        }
    }

</style>
</body>
</html>
