<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employee Management System</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous" />

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
			background-image: linear-gradient(45deg, #4158D0 0%, #C850C0 46%, #FFCC70 100%);
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
		    border-top: none;
		    border-left: none;
		    border-right: none;
		    text-align: center;
		}
		
		th {
		    
		    font-weight: bold;
		    color: #fff;
		}
		
		a {
		    text-decoration: none;
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
        <div class="container-fluid" >
            <a class="navbar-brand" href="#">Employee Management System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="admin.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="findAll">View Employee</a></li>
                    <li class="nav-item"><a class="nav-link" href="search.jsp">Search Employee</a></li>
                    <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fluid main-content">
        <div class="row w-100">
            <div class="col-lg-12 info-section d-flex align-items-center justify-content-center">
                <div class="container" id="reg-form">
                    <h2 class="text-center" style="padding-bottom: 20px;">Employee Dash Board</h2>
                    <table >
                    	<tr>
                    		<th>Name</th>
                    		<th>Email</th>
                    		<th>Age</th>
                    		<th>Gender</th>
                    		<th>Mobile</th>
                    		<th>Department</th>
                    		<th>Address</th>
                    		<th>Edit</th>
                    		<th>Delete</th>
                    	</tr>
                    	<c:forEach items="${empList}" var="employee">
                    		<tr>
                    			<td>${employee.name}</td>
                    			<td>${employee.email}</td>
                    			<td>${employee.age}</td>
                    			<td>${employee.gender}</td>
                    			<td>${employee.mobile}</td>
                    			<td>${employee.department}</td>
                    			<td>${employee.address}</td>
                    			<td>
                    				<a href='edit.jsp?email=${employee.email}&name=${employee.name}&age=${employee.age}&mobile=${employee.mobile}&department=${employee.department}&address=${employee.address}'>Edit</a>
                    			</td>
                    			<td>
                    				<a href='delete?email=${employee.email}'>Delete</a>
                    			</td>
                    		</tr>
                    	</c:forEach>
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
