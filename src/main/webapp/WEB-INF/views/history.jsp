<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Emission History</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: #f5f7fa; }
        .navbar { background: #667eea; color: white; padding: 20px 40px; display: flex; justify-content: space-between; align-items: center; }
        .navbar h1 { font-size: 1.5em; }
        .navbar a { color: white; text-decoration: none; margin-left: 20px; }
        .container { max-width: 1200px; margin: 40px auto; padding: 0 20px; }
        .card { background: white; padding: 30px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        h2 { color: #667eea; margin-bottom: 30px; }
        table { width: 100%; border-collapse: collapse; }
        th, td { padding: 15px; text-align: left; border-bottom: 1px solid #e0e0e0; }
        th { background: #f5f7fa; color: #667eea; font-weight: 600; }
        tr:hover { background: #f9f9f9; }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>🌍 Carbon Footprint Tracker</h1>
        <div>
            <a href="/user/dashboard">Dashboard</a>
            <a href="/logout">Logout</a>
        </div>
    </div>
    <div class="container">
        <div class="card">
            <h2>Your Emission History</h2>
            <table>
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Transport (kg)</th>
                        <th>Food (kg)</th>
                        <th>Energy (kg)</th>
                        <th>Total (kg)</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${logs}" var="log">
                        <tr>
                            <td>${log.date}</td>
                            <td>${log.transportEmission}</td>
                            <td>${log.foodEmission}</td>
                            <td>${log.energyEmission}</td>
                            <td><strong>${log.totalEmission}</strong></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
