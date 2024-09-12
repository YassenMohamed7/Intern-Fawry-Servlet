<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
    <link rel="stylesheet" href="style.css">
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
    <h1>Add Product</h1>
    <form action="/catalog/products" method="POST" id="productForm">
        <div class="form-group">
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="name" required>
        </div>
        <div class="form-group">
            <label for="productId">Product ID:</label>
            <input type="text" id="productId" name="id" required>
        </div>
        <div class="form-group">
            <label for="productPrice">Product Price:</label>
            <input type="number" id="productPrice" name="price" required step="10">
        </div>
        <button type="submit">Add Product</button>
    </form>
</div>
</div>
</body>
</html>
