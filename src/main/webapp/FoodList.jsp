<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.FoodDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Food List – Foodie</title>
    <link rel="icon" href="https://th.bing.com/th/id/OIP.7YTPzmuS1aEOLQAhx-AHTwHaHa?w=158&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" type="image/png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="FoodList.css">
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

<div class="admin-section">
    <div class="admin-container">
        <h1 class="admin-heading">Available Food Items</h1>
        <p class="admin-subtext">All active items currently listed on the <span class="highlight">Foodie menu</span> are shown below.</p>
    </div>

    <div class="table-section">
        <h2 class="table-heading">Food List</h2>
        <div class="table-responsive">
            <table class="table table-bordered table-hover text-center">
            <thead class="table-dark">
				<tr style="text-align: center">
				<td>FOOD ID</td>
				<td>FOOD NAME</td>
				<td>PRICE</td>
				</tr>
            </thead>
				<%
				FoodDao fdao=new FoodDao();
				ResultSet rs=fdao.getData();
				while(rs.next())
				{
				%>
				<tbody>
				<tr style="text-align: center">
				<td><%=rs.getString(1) %>
				<td><%=rs.getString(2) %>
				<td><%=rs.getString(3) %>
				</tr>
				</tbody>
				<%
				}
				%>

            </table>
        </div>
    </div>
</div>

<footer>
    <p class="mb-0">© 2025 Foodie Admin Panel. All rights reserved.</p>
    <p>Support: admin@foodie.com</p>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
