<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Debug Info</title>
</head>
<body>
    <h1>Debug Information</h1>
    <p>Total users in database: ${userCount}</p>
    <p>If this shows 0, the DataInitializer didn't run or database connection failed.</p>
    <p>If this shows 2 or more, users exist but login credentials might be wrong.</p>
    <a href="/">Back to Home</a>
</body>
</html>
