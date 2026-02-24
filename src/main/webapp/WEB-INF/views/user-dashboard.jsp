<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: #f5f7fa; }
        .navbar { background: #667eea; color: white; padding: 20px 40px; display: flex; justify-content: space-between; align-items: center; }
        .navbar h1 { font-size: 1.5em; }
        .navbar a { color: white; text-decoration: none; margin-left: 20px; }
        .container { max-width: 1200px; margin: 40px auto; padding: 0 20px; }
        .welcome { background: white; padding: 30px; border-radius: 10px; margin-bottom: 30px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        .stats { display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 20px; margin-bottom: 30px; }
        .stat-card { background: white; padding: 30px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); text-align: center; }
        .stat-card h3 { color: #667eea; font-size: 2em; margin-bottom: 10px; }
        .actions { display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 20px; }
        .action-btn { background: #667eea; color: white; padding: 20px; border-radius: 10px; text-align: center; text-decoration: none; transition: transform 0.3s; }
        .action-btn:hover { transform: translateY(-5px); }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>🌍 Carbon Footprint Tracker</h1>
        <div>
            <span>Welcome, ${user.name}</span>
            <a href="/logout">Logout</a>
        </div>
    </div>
    <div class="container">
        <div class="welcome">
            <h2>Welcome to Your Dashboard</h2>
            <p>Track and manage your carbon footprint</p>
        </div>
        <div class="stats">
            <div class="stat-card">
                <h3>${totalEmission}</h3>
                <p>Total CO₂ Emissions (kg)</p>
            </div>
            <div class="stat-card">
                <h3>${logs.size()}</h3>
                <p>Total Logs</p>
            </div>
        </div>
        <div class="actions">
            <a href="/user/calculate" class="action-btn">📊 Calculate Emissions</a>
            <a href="/user/history" class="action-btn">📜 View History</a>
            <a href="/user/survey" class="action-btn">📝 Take Survey</a>
        </div>
    </div>
</body>
</html>
