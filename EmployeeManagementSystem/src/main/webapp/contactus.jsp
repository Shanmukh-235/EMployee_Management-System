<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Employee Management System</title>

<style>
        html,
		body {
		    height: 100%;
		    margin: 0;
		    padding: 0;
		}
		
		.navbar-brand,
		.nav-link {
		    color: #000 !important;
		    font-weight: 500;
		}
		
		body {
		    background-color: #4158D0;
			background-image: linear-gradient(45deg, #fdc830, #f37335);
		    background-repeat: no-repeat;
		    background-position: center;
		    background-size: cover;
		    color: #fff;
		}
		
		#reg-form {
		    background-color: rgba(255, 255, 255, 0.2);
		    padding: 30px;
		    border-radius: 25px;
		    box-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
		    color: #fff;
		    border: 1px solid #fff;
		}
		
		.main-content {
		    min-height: calc(100vh - 70px);
		    display: flex;
		    align-items: center;
		    justify-content: center;
		}
		
		.info-section {
		    display: flex;
		    flex-direction: column;
		    justify-content: center;
		    height: 100%;
		}
		
		
		table {
		    width: 100%;
		    margin-top: 20px;
		    background-color: transparent;
		    color: #fff;
		    border-collapse: collapse;
		}
		
		th,
		td {
		    padding: 8px 10px; /* Reduced padding */
		    border-bottom: 1px solid #fff; /* Only bottom border */
		    border: none;
		    text-align: center;
		}
		
		th {
		    
		    font-weight: bold;
		    color: #fff;
		}
		
		a {
		    text-decoration: none;
		    color: #fff;
		}

		
		@media (max-width: 768px) {
		    .main-content {
		        flex-direction: column;
		        padding: 20px;
		    }
		
		    .info-section,
		    .image-section {
		        margin-bottom: 20px;
		    }
		}

    </style>

</head>

<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Employee Management System</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="./index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="register.jsp">Registration</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="aboutus.jsp">About Us</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="contactus.jsp">Contact
							Us</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Centered Profile Card -->
    <div class="d-flex justify-content-center align-items-center" style="height: calc(100vh - 70px);">
        <div class="card w-60 p-4" id="reg-form">
            <h2 class="text-center mb-4">Contact us</h2>

            <ul class="nav nav-tabs" id="employeeTab" role="tablist">
                <li class="nav-item" role="presentation">
                </li>
            </ul>

            <div class="tab-content" id="employeeTabContent reg-form">
                <div class="tab-pane fade show active" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                    <table class="">
                        <tr><th>Name</th><td>Shri Shanmukhananda Baba</td></tr>
                        <tr><th>Age</th><td>99999+</td></tr>
                        <tr><th>Mobile</th><td>+69 420420420</td></tr>
                        <tr><th>Address</th><td>Moghalrajapuram Guhalu, Opposite Codegnan building,
                        Moghalrajapuram, Vijayawada</td></tr>
                        <tr><th>External Links</th> <td><a href="mailto:shanmukhapoornachand14316@gmail.com"><i class="fa-solid fa-envelope"></i></a> | <a href="https://github.com/Shanmukh-235"><i class="fa-brands fa-github"></i></a> | <a href="www.linkedin.com/in/shanmukha-poorna-chand-adapaka"><i class="fa-brands fa-linkedin-in"></i></a></td></tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
	<!-- Bootstrap JS Bundle -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-qO0HnZ/Xp2m3xmv0MyQa7dfF4V9z9ozvGzU3ltX0N7dKkkFWTvCqGpJfBx4jo6Z2"
		crossorigin="anonymous"></script>
</body>

</html>
