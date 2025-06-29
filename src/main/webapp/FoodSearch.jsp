<%@ page import="java.sql.ResultSet" %>
<%@ page import="master.dao.FoodDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Food Search – Foodie</title>
    <link rel="icon" href="https://th.bing.com/th/id/OIP.7YTPzmuS1aEOLQAhx-AHTwHaHa?w=158&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" type="image/png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="FoodSearch.css">
</head>

<body>

    <div class="bg-image"></div>
    <div class="overlay"></div>
<div class="page-wrapper">
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
        <a class="navbar-brand d-flex align-items-center" href="Index.jsp">
            <img src="https://th.bing.com/th/id/OIP.7YTPzmuS1aEOLQAhx-AHTwHaHa?w=158&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" height="35" width="35" style="border-radius: 50%">
            &nbsp;Foodie
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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
<div class="main-content">
<div class="hero-tagline text-center text-white mt-5 pt-5">
    <h1 class="display-5 font-weight-bold">Craving Something Delicious?</h1>
    <p class="lead">Search for your favorite food and find the best match instantly!</p>
</div>
<div class="admin-section">
    <div class="search-form">
        <h2 class="animated-heading">🔍 Let's Find Your Dish!</h2>
        <form action="FoodSearch.jsp" method="post">
            <div class="form-group">
                <label for="fname">Enter Food Name</label>
                <input type="text" class="form-control" id="fname" name="fname" placeholder="e.g., Biryani, Pizza, Pasta..." required>
            </div>
            <div class="text-center">
                <input type="submit" class="btn btn-search" value="🍽️ Search Now">
            </div>
        </form>
    </div>
</div>

<div class="table-container">
    <h2 class="text-center mb-4">🍲 Food Details</h2>
    <p class="text-center text-muted mb-4">Below are the mouth-watering items we found for you!</p>
    <table class="table table-hover table-striped text-center">
        <thead class="thead-dark">
            <tr>
                <th>Food ID</th>
                <th>Food Name</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <%
            String fname = request.getParameter("fname");
            FoodDao fdao = new FoodDao();
            ResultSet rs = fdao.getFnameDetails(fname);
            while(rs.next()) {
            %>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td>₹<%= rs.getString(3) %></td>
            </tr>
            <%
            }
            %>
        </tbody>
    </table>
</div>
</div>

    <footer>
        <p class="mb-0">© 2025 Foodie Admin Panel. All rights reserved.</p>
        <p>Support: admin@foodie.com</p>
    </footer>
</div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
