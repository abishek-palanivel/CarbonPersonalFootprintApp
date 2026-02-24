<%@ page language="java"%>
<html>
<head>
<title>Login | Carbon Footprint</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">


	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-5">
				<div class="card shadow-lg">
					<div class="card-body">
						<h3 class="text-center mb-4">Login</h3>
						<form action="/dashboard" method="get">
							<div class="mb-3">
								<label>Email</label> <input type="email" name="email"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label>Password</label> <input type="password" name="password"
									class="form-control" required>
							</div>
							<button class="btn btn-primary w-100">Login</button>
						</form>
						<p class="text-center mt-3">
							New user? <a href="/registerPage">Register here</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>