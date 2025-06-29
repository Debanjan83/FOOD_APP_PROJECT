<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link rel="icon" href="https://th.bing.com/th/id/OIP.W4Lc1xMoE--g0gohhQA9OAHaHa?w=174&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" type="image/png">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="Register.css">
</head>
<body>
<script>
document.querySelector("form").addEventListener("submit", function (e) {
    const username = document.querySelector("[name='uname']").value.trim();
    const password = document.querySelector("[name='pass']").value.trim();
    const name = document.querySelector("[name='nm']").value.trim();

    const usernameRegex = /^[a-zA-Z0-9_]{4,15}$/;
    const nameRegex = /^[A-Za-z ]{2,25}$/;

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

    if (!nameRegex.test(name)) {
        alert("Name should contain only alphabets and spaces (2-25 characters).");
        e.preventDefault();
        return;
    }
});
</script>

<div class="bg-image"></div>
<div class="overlay"></div>

<div class="top-text">
    Ready to join us? Create your account to get started with delicious experiences 🍽️
</div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 form-container">
            <form action="RegisterServe" method="post">
                <h2 class="form-title">Sign Up</h2>

                <input type="text" class="form-control" placeholder="Enter your Username" name="uname" required>
                <input type="password" class="form-control" placeholder="Enter your Password" name="pass" required>
                <input type="text" class="form-control" placeholder="Enter your Name" name="nm" required>

                <input type="submit" class="btn btn-outline-danger register-btn" value="Register">
            </form>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
