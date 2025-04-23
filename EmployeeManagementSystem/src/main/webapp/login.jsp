<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous" />
    <title>Employee Management System</title>
    <style>
        body {
            background: linear-gradient(76deg, rgba(255, 127, 88, 1) 0%, rgba(225, 225, 225, 1) 100%);
            color: #fff;
            min-height: 100vh;
        }

        .navbar {
            background-color: rgba(255, 255, 255, 0.9);
        }

        .navbar-brand,
        .nav-link {
            color: #000 !important;
            font-weight: 500;
        }

        #reg-form {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 30px;
            border-radius: 25px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.3);
            color: #fff;
            border: 1px solid #fff;
        }

        .form-text {
            color: #f0f0f0;
        }

        .login-container {
            min-height: 80vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-img {
            width: 100%;
            max-width: 450px;
            height: auto;
            display: block;
            margin: 0 auto;
            padding: 20px;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg">
       <div class="container-fluid">
            <a class="navbar-brand" href="#">Employee Management System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" href="./index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">Registration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="aboutus.jsp">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact Us</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-4">
        <div class="row">
            <div class="col-lg-6 login-container">
                <form action="login" id="reg-form" class="w-100" style="max-width: 400px;">
                    <h3 class="text-center mb-4">Employee Login</h3>
                    <%if(request.getAttribute("status")!=null){%>
                        <h6 style="text-align: center;"><%= request.getAttribute("status") %> </h6> <%
                        }%>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" required>
                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" name="password" required>
                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Remember me</label>
                    </div>
                    <button type="submit" class="btn btn-light w-100">Submit</button>
                </form>
            </div>
            <div class="col-lg-6 d-flex align-items-center justify-content-center">
                <img src="./assets/adm.png" alt="Admin Illustration" class="login-img">
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qmW8p96N+LfLZx4/yoX9OKcKYR7IKFyTzWqZq06aEwYVUPv6HFKdJkHjpX4JWmMm"
        crossorigin="anonymous"></script>
</body>

</html>