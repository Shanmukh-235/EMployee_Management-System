<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employee Management System</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous" />

    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            background-image: linear-gradient(38deg, #dbdcd7 0%, #dddcd7 24%, #e2c9cc 30%, #e7627d 46%, #b8235a 59%, #801357 71%, #3d1635 84%, #1c1a27 100%);
            background-size: cover;
            background-repeat: no-repeat;
            color: #fff;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.1);
            border: 1px solid #fff;
            box-shadow: 0 0 15px rgba(255, 255, 255, 0.3);
            border-radius: 15px;
            color: #fff;
        }

        .nav-tabs .nav-link.active {
            background-color: rgba(255, 255, 255, 0.2);
            border: none;
            color: #fff;
        }

        .nav-tabs .nav-link {
            color: #fff;
        }

        .table td, .table th {
            color: #fff;
            background: transparent;
        }

        .tab-content {
            padding-top: 20px;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
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

    <!-- Centered Profile Card -->
    <div class="d-flex justify-content-center align-items-center" style="height: calc(100vh - 70px);">
        <div class="card w-55 p-4">
            <h2 class="text-center mb-4">Employee Details</h2>

            <ul class="nav nav-tabs" id="employeeTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile"
                        type="button" role="tab" aria-controls="profile" aria-selected="true">Employee Profile</button>
                </li>
            </ul>

            <div class="tab-content" id="employeeTabContent">
                <div class="tab-pane fade show active" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                    <table class="table table-borderless">
                        <tr><th>Name</th><td>${employee.name}</td></tr>
                        <tr><th>Email</th><td>${employee.email}</td></tr>
                        <tr><th>Age</th><td>${employee.age}</td></tr>
                        <tr><th>Gender</th><td>${employee.gender}</td></tr>
                        <tr><th>Mobile</th><td>${employee.mobile}</td></tr>
                        <tr><th>Department</th><td>${employee.department}</td></tr>
                        <tr><th>Address</th><td>${employee.address}</td></tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YzQ2T+Nx9Quy1i9JLv0i8vb5WWaR6AO2XxlfxILppWPa5H+Z5jC/hnKJlH1jqZzL"
        crossorigin="anonymous"></script>
</body>

</html>
