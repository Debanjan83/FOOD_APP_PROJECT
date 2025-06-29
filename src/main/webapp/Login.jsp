<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="icon" href="https://th.bing.com/th/id/OIP.W4Lc1xMoE--g0gohhQA9OAHaHa?w=174&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" type="image/png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="Login.css">

</head>
<body>
<script>
	document.querySelector("form").addEventListener("submit", function(e) {
    const username = document.querySelector("[name='uname']").value.trim();
    const password = document.querySelector("[name='pass']").value.trim();

    const usernameRegex = /^[a-zA-Z0-9_]{4,15}$/;

    if (!usernameRegex.test(username)) {
        alert("Username must be 4-15 characters and contain only letters, numbers, or underscores.");
        e.preventDefault();
        return;
    }

    if (password.length < 5) {
        alert("Password must be at least 5 characters long.");
        e.preventDefault();
        return;
    }
});
</script>

<div class="bg-image"></div>
<div class="overlay"></div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 form-container">
            <form action="LoginServe" method="post">
                <h2 class="form-title">Welcome Back! Please Log In</h2>

                <input type="text" class="form-control" placeholder="Enter your Username" name="uname" required>
                <input type="password" class="form-control" placeholder="Enter your Password" name="pass" required>

                <input type="submit" class="btn btn-outline-danger login-btn" value="Login">
            </form>
        </div>
    </div>
</div>

<div class="cta-text">New to the site? <a href="Register.jsp" class="link">Sign Up here</a></div>

<div class="motivation-text">Your favorite food is just a click away. Let's get started!</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
