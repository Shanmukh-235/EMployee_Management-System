<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Employee Management System</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous" />

<style>
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

.navbar-brand, .nav-link {
	color: #000 !important;
	font-weight: 500;
}

body {
	/*background: #EEAECA;*/
	background: linear-gradient(135deg,rgba(42, 123, 155, 1) 0%, rgba(87, 199, 133, 1) 50%, rgba(237, 221, 83, 1) 100%);
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

.responsive-img {
	max-width: 100%;
	height: auto;
}

@media ( max-width : 768px) {
	.main-content {
		flex-direction: column;
		padding: 20px;
	}
	.info-section, .image-section {
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
						aria-current="page" href="admin.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="findAll">View
							Employee</a></li>
					<li class="nav-item"><a class="nav-link" href="search.jsp">Search
							Employee</a></li>
					<li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid main-content" style="padding-right: 70px;">
		<div class="row w-100">
			<div
				class="col-lg-4 d-flex align-items-center justify-content-center image-section">
				<img src="./assets/s1.png" alt="Employee illustration"
					class="responsive-img" />
			</div>
			<div
				class="col-lg-4 info-section d-flex align-items-center justify-content-center " style="padding-top:50px;">
				<form action="search" id="reg-form" class="w-100"
						style="max-width: 400px;">
						<h3 class="text-center mb-4">Search by Email</h3>
						<%if(request.getAttribute("status")!=null){%>
						<h6 style="text-align: center;"><%= request.getAttribute("status") %>
						</h6>
						<%
                        }%>
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">Email
								address</label> <input type="email" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								name="email" required>
						</div>

						<button type="submit" class="btn btn-light w-100">Search</button>
					</form>
			</div>
			<div
				class="col-lg-4 d-flex align-items-center justify-content-center image-section">
				<img src="./assets/s3.png" alt="Employee illustration"
					class="responsive-img" />
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YzQ2T+Nx9Quy1i9JLv0i8vb5WWaR6AO2XxlfxILppWPa5H+Z5jC/hnKJlH1jqZzL"
		crossorigin="anonymous"></script>
</body>

</html>
