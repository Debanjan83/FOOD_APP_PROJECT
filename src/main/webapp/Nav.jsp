<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Panel – Foodie</title>
    <link rel="icon" href="https://th.bing.com/th/id/OIP.7YTPzmuS1aEOLQAhx-AHTwHaHa?w=158&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" type="image/png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="Nav.css">
</head>
<body>
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

    <div class="container admin-container">
        <h1 class="admin-heading">Welcome to the Admin Dashboard</h1>
        <p class="admin-subtext">
            You're in control of everything behind the scenes. Manage <span class="highlight">restaurants</span>, monitor <span class="highlight">food inventory</span>,
            and keep customers happy — all from here!
        </p>
        <p class="admin-subtext">
            Use the navigation above to <span class="highlight">add, update, search</span> or <span class="highlight">delete food items</span>. Keep your platform fresh and fast!
        </p>
        <p class="admin-subtext">
            Empower your delivery network and boost productivity by managing <span class="highlight">job roles</span> and <span class="highlight">applications</span> smoothly.
        </p>
    </div>

    <footer class="text-white text-center py-3">
        <p class="mb-0">© 2025 Foodie Admin Panel. All rights reserved.</p>
        <p>Support: admin@foodie.com</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>