<html>
<head>
<title>Add Carbon Log</title>
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
				<h3 class="mb-4">Add Carbon Log</h3>
				<form action="/carbon/add" method="post">
					<input class="form-control mb-3" name="transportEmission"
						placeholder="Transport Emission"> <input
						class="form-control mb-3" name="foodEmission"
						placeholder="Food Emission"> <input
						class="form-control mb-3" name="energyEmission"
						placeholder="Energy Emission">
					<button class="btn btn-success">Save</button>
					<a href="/dashboard" class="btn btn-secondary ms-2">Back</a>
				</form>
			</div>
		</div>
	</div>


</body>
</html>