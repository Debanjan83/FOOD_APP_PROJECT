<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Panel – Foodie</title>
    <link rel="icon" href="https://th.bing.com/th/id/OIP.7YTPzmuS1aEOLQAhx-AHTwHaHa?w=158&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" type="image/png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="FoodDel.css">
</head>
<body>
<script>
	document.querySelector("form").addEventListener("submit", function(e) {
    const foodId = document.getElementById("fid").value.trim();
    const idRegex = /^[a-zA-Z0-9_-]{2,10}$/;

    if (!idRegex.test(foodId)) {
        alert("Please enter a valid Food ID (2-10 characters: letters, numbers, _ or -).");
        e.preventDefault();
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
            <li class="nav-item"><a class="nav-link" href="Nav.jsp">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="FoodAdd.jsp">Add Food</a></li>
            <li class="nav-item"><a class="nav-link" href="FoodDel.jsp">Delete Food</a></li>
            <li class="nav-item"><a class="nav-link" href="FoodUpd.jsp">Update Food</a></li>
            <li class="nav-item"><a class="nav-link" href="FoodList.jsp">Food List</a></li>
            <li class="nav-item"><a class="nav-link" href="FoodSearch.jsp">Search Food</a></li>
        </ul>
    </div>
</nav>

<div class="admin-section">
    <div class="admin-container">
	    <h1 class="admin-heading">Manage Your Menu – Delete Food Items</h1>
	    <p class="admin-subtext">
	        This section lets you <span class="highlight">remove food items</span> that are no longer available or needed. Keeping your menu clean helps customers browse more easily.
	    </p>
	    <p class="admin-subtext">
	        Simply enter the <span class="highlight">Food ID</span> of the item you want to delete in the form beside. Make sure the ID is correct — this action is <span class="highlight">permanent</span> and cannot be undone.
	    </p>
	    <p class="admin-subtext">
	        Regularly review and update your menu to ensure your offerings are <span class="highlight">fresh and relevant</span>. A tidy menu is a happy menu!
	    </p>
	</div>
    <div class="form-section">
        <h2>DELETE FOOD</h2>
        <form action="FoodDelServe" method="post">
            <div class="form-group">
                <label for="fid">Food ID</label>
                <input type="text" class="form-control" id="fid" name="fid" placeholder="Enter the Food ID" required>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-dark">Delete</button>
            </div>
        </form>
    </div>
</div>

<footer class="text-white text-center py-3">
    <p class="mb-0">© 2025 Foodie Admin Panel. All rights reserved.</p>
    <p>Support: admin@foodie.com</p>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
