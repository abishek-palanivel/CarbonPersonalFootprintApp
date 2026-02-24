<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Surveys</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: #f5f7fa; }
        .navbar { background: #dc3545; color: white; padding: 20px 40px; display: flex; justify-content: space-between; align-items: center; }
        .navbar h1 { font-size: 1.5em; }
        .navbar a { color: white; text-decoration: none; margin-left: 20px; }
        .container { max-width: 1200px; margin: 40px auto; padding: 0 20px; }
        .card { background: white; padding: 30px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        h2 { color: #dc3545; margin-bottom: 30px; }
        table { width: 100%; border-collapse: collapse; }
        th, td { padding: 15px; text-align: left; border-bottom: 1px solid #e0e0e0; }
        th { background: #f5f7fa; color: #dc3545; font-weight: 600; }
        tr:hover { background: #f9f9f9; }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>🔐 Admin Dashboard</h1>
        <div>
            <a href="/admin/dashboard">Dashboard</a>
            <a href="/logout">Logout</a>
        </div>
    </div>
    <div class="container">
        <div class="card">
            <h2>All User Surveys</h2>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>User</th>
                        <th>Transport Mode</th>
                        <th>Diet Type</th>
                        <th>Energy Usage (kWh)</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${surveys}" var="survey">
                        <tr>
                            <td>${survey.id}</td>
                            <td>${survey.user.name}</td>
                            <td>${survey.transportMode}</td>
                            <td>${survey.dietType}</td>
                            <td>${survey.energyUsage}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
