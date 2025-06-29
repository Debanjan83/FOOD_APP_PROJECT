<%@page import="master.dao.OrderDao"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Client Panel – Foodie</title>
<link rel="icon" href="https://th.bing.com/th/id/OIP.7YTPzmuS1aEOLQAhx-AHTwHaHa?w=158&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" type="image/png">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="OrderList.css">
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
    	Welcome to the <span class="highlight">Order List</span> section! Here, you can view all the orders you've placed along with their essential details like food ID, quantity, and order date.
	</p>
	<p class="admin-subtext">
    	This section helps you <span class="highlight">keep track of your order history</span> so you can review what you've ordered and when, making it easier to reorder your favorites or manage your meals.
	</p>
	<p class="admin-subtext">
    	Need to check your <span class="highlight">order status</span>? You can do that right from here. Stay informed and enjoy a seamless food ordering journey!
	</p>
</div>
<div class="table-section">
    <h2 class="table-heading">Order List</h2>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>ORDER ID</th>
                <th>FOOD ID</th>
                <th>ORDER DATE</th>
                <th>ORDER QUANTITY</th>
            </tr>
        </thead>
        <tbody>
        <%
            OrderDao odao = new OrderDao();
            ResultSet rs = odao.getData();
            while(rs.next()) {
        %>
            <tr>
                <td><%= rs.getInt(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getInt(4) %></td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>
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