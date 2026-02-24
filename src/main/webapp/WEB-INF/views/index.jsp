<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Carbon Personal Footprint App</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); min-height: 100vh; display: flex; align-items: center; justify-content: center; }
        .container { text-align: center; color: white; padding: 40px; }
        h1 { font-size: 3em; margin-bottom: 20px; text-shadow: 2px 2px 4px rgba(0,0,0,0.3); }
        p { font-size: 1.2em; margin-bottom: 40px; }
        .btn-group { display: flex; gap: 20px; justify-content: center; }
        .btn { padding: 15px 40px; font-size: 1.1em; border: none; border-radius: 50px; cursor: pointer; text-decoration: none; transition: all 0.3s; }
        .btn-primary { background: white; color: #667eea; }
        .btn-secondary { background: transparent; color: white; border: 2px solid white; }
        .btn:hover { transform: translateY(-3px); box-shadow: 0 10px 20px rgba(0,0,0,0.2); }
    </style>
</head>
<body>
    <div class="container">
        <h1>🌍 Carbon Footprint Tracker</h1>
        <p>Track, Calculate, and Reduce Your Carbon Emissions</p>
        <div class="btn-group">
            <a href="/login" class="btn btn-primary">Login</a>
            <a href="/register" class="btn btn-secondary">Register</a>
        </div>
    </div>
</body>
</html>
