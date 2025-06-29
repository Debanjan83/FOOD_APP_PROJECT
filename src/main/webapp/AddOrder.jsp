<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Client Panel – Foodie</title>
<link rel="icon" href="https://th.bing.com/th/id/OIP.7YTPzmuS1aEOLQAhx-AHTwHaHa?w=158&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" type="image/png">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="AddOrder.css">
</head>
<body>
<script>
document.querySelector("form").addEventListener("submit", function (e) {
    const foodId = document.getElementById("fid").value.trim();
    const orderQty = document.getElementById("oqty").value.trim();
    const idRegex = /^[a-zA-Z0-9_-]{2,10}$/;
    const positiveIntRegex = /^[1-9]\d*$/;

    if (!idRegex.test(foodId)) {
        alert("Food ID should be 2-10 characters (letters, numbers, _ or -).");
        e.preventDefault();
        return;
    }

    if (!positiveIntRegex.test(orderQty)) {
        alert("Please enter a valid Order Quantity (positive integer only).");
        e.preventDefault();
        return;
    }
});
</script>

<div class="bg-image"></div>
<div class="overlay"></div>

    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
    <a class="navbar-brand d-flex align-items-center" href="Index.jsp">
        <img src="https://th.bing.com/th/id/OIP.7YTPzmuS1aEOLQAhx-AHTwHaHa?w=158&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" height="35" width="35" style="border-radius: 50%">
        &nbsp;Foodie
    </a>
    <button class="navbar-toggler custom-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    	<div class="animated-icon"><span></span><span></span><span></span></div>
	</button>

    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav three-bar">
            <li class="nav-item"><a class="nav-link" href="NavClient.jsp">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="AddOrder.jsp">Add Order</a></li>
            <li class="nav-item"><a class="nav-link" href="FoodClientList.jsp">Food List</a></li>
            <li class="nav-item"><a class="nav-link" href="OrderList.jsp">Order List</a></li>
            <li class="nav-item"><a class="nav-link" href="SearchClientFood.jsp">Search Food</a></li>
            <li class="nav-item"><a class="nav-link" href="Billing.jsp">Billing</a></li>
        </ul>
    </div>
	</nav>
	<div class="admin-section">
	<div class="container admin-container">
        <h1 class="admin-heading">Welcome to The Client Dashboard</h1>
        <p class="admin-subtext">
    		Welcome to the <span class="highlight">Order Food</span> section! Here, you can explore a variety of delicious dishes and add your favorite items to the cart in just a few clicks.
		</p>
		<p class="admin-subtext">
    		Use the search bar or food list to <span class="highlight">find your preferred meals</span>. Once selected, simply <span class="highlight">add them to your order</span> and proceed to checkout whenever you're ready.
		</p>
		<p class="admin-subtext">
    		After placing your order, you can <span class="highlight">track its status</span> and review your <span class="highlight">billing information</span> anytime. Enjoy a fast, smooth, and satisfying food ordering experience!
		</p>

    </div>
	<div class="form-section">
	<h2>ORDER FOOD</h2>
		<form action="OrderServe" method="post" class="w-100">
			<div class="form-group">
                <label for="fid">Food ID</label>
                <input type="text" class="form-control" id="fid" name="fid" placeholder="Enter the Food ID" required>
            </div>
			<div class="form-group">
                <label for="oqty">Order Quantity</label>
                <input type="text" class="form-control" id="oqty" name="oqty" placeholder="Enter the Order Quantity" required>
            </div>
			<div class="text-center">
                <button type="submit" class="btn btn-dark">Confirm</button>
            </div>
		</form>
	</div>
	</div>
	<footer class="text-white text-center py-3">
        <p class="mb-0">© 2025 Foodie Client Panel. All rights reserved.</p>
        <p>Support: admin@foodie.com</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>