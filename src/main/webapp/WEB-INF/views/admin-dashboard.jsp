<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: #f5f7fa; }
        .navbar { background: #dc3545; color: white; padding: 20px 40px; display: flex; justify-content: space-between; align-items: center; }
        .navbar h1 { font-size: 1.5em; }
        .navbar a { color: white; text-decoration: none; margin-left: 20px; }
        .container { max-width: 1200px; margin: 40px auto; padding: 0 20px; }
        .welcome { background: white; padding: 30px; border-radius: 10px; margin-bottom: 30px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        .stats { display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 20px; margin-bottom: 30px; }
        .stat-card { background: white; padding: 30px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); text-align: center; }
        .stat-card h3 { color: #dc3545; font-size: 2em; margin-bottom: 10px; }
        .actions { display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 20px; }
        .action-btn { background: #dc3545; color: white; padding: 20px; border-radius: 10px; text-align: center; text-decoration: none; transition: transform 0.3s; }
        .action-btn:hover { transform: translateY(-5px); }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>🔐 Admin Dashboard</h1>
        <div>
            <span>Admin: ${user.name}</span>
            <a href="/logout">Logout</a>
        </div>
    </div>
    <div class="container">
        <div class="welcome">
            <h2>Admin Control Panel</h2>
            <p>Manage users and monitor carbon emissions</p>
        </div>
        <div class="stats">
            <div class="stat-card">
                <h3>${totalUsers}</h3>
                <p>Total Users</p>
            </div>
            <div class="stat-card">
                <h3>${totalLogs}</h3>
                <p>Total Logs</p>
            </div>
            <div class="stat-card">
                <h3>${totalEmissions}</h3>
                <p>Total Emissions (kg CO₂)</p>
            </div>
        </div>
        <div class="actions">
            <a href="/admin/users" class="action-btn">👥 Manage Users</a>
            <a href="/admin/logs" class="action-btn">📊 View All Logs</a>
            <a href="/admin/surveys" class="action-btn">📝 View Surveys</a>
        </div>
    </div>
</body>
</html>
