<%@ page language="java"%>
<html>
<head>
<title>Register | Carbon Footprint</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">


	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card shadow-lg">
					<div class="card-body">
						<h3 class="text-center mb-4">User Registration</h3>
						<form action="/auth/register" method="post">
							<input class="form-control mb-3" name="name"
								placeholder="Full Name" required> <input
								class="form-control mb-3" type="email" name="email"
								placeholder="Email" required> <input
								class="form-control mb-3" type="password" name="password"
								placeholder="Password" required> <input
								class="form-control mb-3" name="role"
								placeholder="Role (USER/ADMIN)">
							<button class="btn btn-success w-100">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>