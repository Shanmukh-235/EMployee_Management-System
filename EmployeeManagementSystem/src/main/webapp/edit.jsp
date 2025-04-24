<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
  <title>Employee Management System</title>
  <style>
    html, body {
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
          
          background-color: #8BC6EC;
background-image: linear-gradient(135deg, #8BC6EC 0%, #9599E2 100%);
          
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
        color: #fff;
    }

    #reg-form {
	  background-color: rgba(255, 255, 255, 0.2);
	  padding: 30px;
	  border-radius: 25px;
	  box-shadow: 0 0 10px rgba(255, 255, 255, 0.3);
	  color: #fff;
	  border: 1px solid #fff;
	  transform-origin: top center;
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

	<div id="reg-form" class="container mt-5" style="max-width: 480px; backdrop-filter: blur(10px); -webkit-backdrop-filter: blur(10px);">
    <form class="row g-3" action="edituser">
      <!-- Name -->
      <%if(request.getAttribute("status")!=null){%>
        <h4 style="text-align: center;"><%= request.getAttribute("status") %> </h4> <%
        }%>
      <div class="col-12">
        <label for="validationDefaultUsername" class="form-label">Name</label>
        <input type="text" class="form-control" id="validationDefaultUsername" name="name" value='<%=request.getParameter("name") %>'>
      </div>

      <!-- Email -->
      <div class="col-md-12">
        <label for="validationDefault01" class="form-label">Email</label>
        <input type="email" class="form-control" id="validationDefault01" name="email" value='<%=request.getParameter("email") %>' readonly>
      </div>


      <!-- Mobile -->
      <div class="col-md-9">
        <label for="validationDefault03" class="form-label">Mobile</label>
        <input type="tel" class="form-control" id="validationDefault03" name="mobile" value='<%=request.getParameter("mobile") %>'>
      </div>

      <!-- Department -->
      <div class="col-md-3">
        <label for="validationDefault04" class="form-label">Department</label>
        <input type="text" class="form-control" id="validationDefault03" name="department" value='<%=request.getParameter("department") %>'>
      </div>

      <!-- Gender -->
      <div class="col-md-8">
        <label class="form-label d-block">Gender</label>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="male" value="Male" required>
          <label class="form-check-label" for="male">Male</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="female" value="Female">
          <label class="form-check-label" for="female">Female</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="other" value="Other">
          <label class="form-check-label" for="other">Other</label>
        </div>
      </div>
      
      <div class="col-md-4">
        <label for="validationDefault03" class="form-label">Age</label>
        <input type="text" class="form-control" id="validationDefault03" name="age" value='<%=request.getParameter("age") %>'>
      </div>
      

      <!-- Address -->
      <div class="col-12">
        <label for="validationDefault05" class="form-label">Address</label>
        <textarea class="form-control" id="validationDefault05" rows="3" name="address" value='<%=request.getParameter("address") %>'></textarea>
      </div>

      <!-- Submit -->
      <div class="col-4">
        <button class="btn btn-light w-100" type="submit">Submit</button>
      </div>
    </form>
  </div>

  <!-- Bootstrap JS Bundle -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-qO0HnZ/Xp2m3xmv0MyQa7dfF4V9z9ozvGzU3ltX0N7dKkkFWTvCqGpJfBx4jo6Z2" crossorigin="anonymous"></script>
</body>

</html>
