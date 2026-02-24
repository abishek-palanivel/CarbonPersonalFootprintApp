<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Carbon Footprint Survey</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: #f5f7fa; }
        .navbar { background: #667eea; color: white; padding: 20px 40px; display: flex; justify-content: space-between; align-items: center; }
        .navbar h1 { font-size: 1.5em; }
        .navbar a { color: white; text-decoration: none; margin-left: 20px; }
        .container { max-width: 800px; margin: 40px auto; padding: 0 20px; }
        .form-card { background: white; padding: 40px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        h2 { color: #667eea; margin-bottom: 30px; }
        .form-group { margin-bottom: 25px; }
        label { display: block; margin-bottom: 8px; color: #333; font-weight: 500; }
        input, select { width: 100%; padding: 12px; border: 2px solid #e0e0e0; border-radius: 8px; font-size: 1em; }
        .btn { width: 100%; padding: 15px; background: #667eea; color: white; border: none; border-radius: 8px; font-size: 1.1em; cursor: pointer; }
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
        <div class="form-card">
            <h2>Carbon Footprint Survey</h2>
            <p style="margin-bottom: 20px;">Help us understand your lifestyle choices</p>
            <form action="/user/survey" method="post">
                <div class="form-group">
                    <label>Primary Transport Mode</label>
                    <select name="transportMode" required>
                        <option value="car">Car</option>
                        <option value="bus">Bus</option>
                        <option value="train">Train</option>
                        <option value="bike">Bike</option>
                        <option value="walk">Walk</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Diet Type</label>
                    <select name="dietType" required>
                        <option value="nonveg">Non-Vegetarian</option>
                        <option value="veg">Vegetarian</option>
                        <option value="vegan">Vegan</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Average Daily Energy Usage (kWh)</label>
                    <input type="number" name="energyUsage" step="0.1" required>
                </div>
                <button type="submit" class="btn">Submit Survey</button>
            </form>
        </div>
    </div>
</body>
</html>
