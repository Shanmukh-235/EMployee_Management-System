<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous" />
    <title>About Us - Employee Management System</title>
    <style>
        body {
            background-image: linear-gradient(58.2deg, rgba(40,91,212,0.73) -3%, rgba(171,53,163,0.45) 49.3%, rgba(255,204,112,0.37) 97.7%);
            color: #333;
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navbar {
            background-color: rgba(255, 255, 255, 0.95);
        }

        .navbar-brand,
        .nav-link {
            color: #000 !important;
            font-weight: 500;
        }

        .about-container {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 30px;
            border-radius: 25px;
            box-shadow: 0 0 15px rgba(255, 255, 255, 0.3);
            border: 1px solid #fff;
            color: #fff;
        }

        .login-img {
            width: 100%;
            max-width: 450px;
            height: auto;
            border-radius: 15px;
        }

        h1 {
            margin-bottom: 20px;
            font-weight: bold;
        }

        p {
            font-size: 1.05rem;
            margin-bottom: 15px;
        }

        @media (max-width: 768px) {
            .about-container {
                padding: 20px;
            }

            .login-img {
                margin-top: 20px;
            }
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
                    <li class="nav-item"><a class="nav-link" href="./index.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="register.jsp">Registration</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="aboutus.jsp">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="contactus.jsp">Contact Us</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5 mb-5">
        <div class="row align-items-center" style="padding-top: 30px;">
            <div class="col-lg-6 col-md-12 about-container mb-4 mb-lg-0">
                <h1 class="text-center">About Us</h1>
                <p>Welcome to our Employee Management System (EMS) portal. This platform is built to simplify and enhance HR operations through digital innovation.</p>
                <p>With our EMS, you can manage employee records, track attendance, assign roles, and monitor performance—all from one centralized location.</p>
                <p>Designed with scalability and usability in mind, this system is suitable for teams of any size—from startups to large enterprises.</p>
                <p>We aim to empower organizations by reducing manual work and improving overall workflow management with secure and user-friendly tools.</p>
                <p>Thank you for choosing our EMS. We are committed to continually improving the platform to serve you better.</p>
            </div>
            <div class="col-lg-6 col-md-12 d-flex justify-content-center">
                <img src="./assets/intern.png" alt="Admin Illustration" class="login-img" />
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qmW8p96N+LfLZx4/yoX9OKcKYR7IKFyTzWqZq06aEwYVUPv6HFKdJkHjpX4JWmMm"
        crossorigin="anonymous"></script>
</body>

</html>
