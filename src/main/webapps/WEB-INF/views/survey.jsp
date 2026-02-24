<html>
<head>
<title>Survey</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">


	<div class="container mt-5">
		<div class="card shadow">
			<div class="card-body">
				<h3 class="mb-4">Carbon Survey</h3>
				<form action="/survey/save" method="post">
					<input class="form-control mb-3" name="transportMode"
						placeholder="Transport Mode"> <input
						class="form-control mb-3" name="dietType" placeholder="Diet Type">
					<input class="form-control mb-3" name="energyUsage"
						placeholder="Energy Usage">
					<button class="btn btn-primary">Submit</button>
					<a href="/dashboard" class="btn btn-secondary ms-2">Back</a>
				</form>
			</div>
		</div>
	</div>


</body>
</html>