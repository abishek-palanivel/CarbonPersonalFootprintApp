<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculation Result</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: #f5f7fa; }
        .navbar { background: #667eea; color: white; padding: 20px 40px; display: flex; justify-content: space-between; align-items: center; }
        .navbar h1 { font-size: 1.5em; }
        .navbar a { color: white; text-decoration: none; margin-left: 20px; }
        .container { max-width: 800px; margin: 40px auto; padding: 0 20px; }
        .result-card { background: white; padding: 40px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); text-align: center; }
        h2 { color: #667eea; margin-bottom: 30px; }
        .emission-box { background: #f0f4ff; padding: 30px; border-radius: 10px; margin: 20px 0; }
        .emission-box h3 { font-size: 3em; color: #667eea; margin-bottom: 10px; }
        .breakdown { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; margin: 30px 0; }
        .breakdown-item { background: #f9f9f9; padding: 20px; border-radius: 8px; }
        .breakdown-item h4 { color: #667eea; margin-bottom: 10px; }
        .btn { display: inline-block; padding: 15px 40px; background: #667eea; color: white; text-decoration: none; border-radius: 8px; margin-top: 20px; }
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
        <div class="result-card">
            <h2>Your Carbon Footprint Result</h2>
            <div class="emission-box">
                <h3>${result.totalEmission} kg</h3>
                <p>Total CO₂ Emissions</p>
            </div>
            <div class="breakdown">
                <div class="breakdown-item">
                    <h4>🚗 Transport</h4>
                    <p>${result.transportEmission} kg CO₂</p>
                </div>
                <div class="breakdown-item">
                    <h4>🍽️ Food</h4>
                    <p>${result.foodEmission} kg CO₂</p>
                </div>
                <div class="breakdown-item">
                    <h4>⚡ Energy</h4>
                    <p>${result.energyEmission} kg CO₂</p>
                </div>
            </div>
            <a href="/user/calculate" class="btn">Calculate Again</a>
            <a href="/user/dashboard" class="btn">Back to Dashboard</a>
        </div>
    </div>
</body>
</html>
