<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Login Page</title>
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
<div class="login">
<div class="login-container">
    <h1>Login</h1>
    <form action="/login" method="post">
        <div class="input-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="input-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
        </div>
        <button type="submit">Login</button>
    </form>
</div>
</div>

</body>
</html>
