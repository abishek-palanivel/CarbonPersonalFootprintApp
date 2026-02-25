<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Debug Info</title>
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; }
        .info { background: #e3f2fd; padding: 15px; margin: 10px 0; border-radius: 5px; }
        .success { background: #c8e6c9; padding: 15px; margin: 10px 0; border-radius: 5px; }
        .error { background: #ffcdd2; padding: 15px; margin: 10px 0; border-radius: 5px; }
    </style>
</head>
<body>
    <h1>🔍 Debug Information</h1>
    
    <div class="info">
        <h3>Database Status</h3>
        <p><strong>Total users in database:</strong> ${userCount}</p>
    </div>
    
    <div class="${adminExists ? 'success' : 'error'}">
        <h3>Admin User</h3>
        <c:choose>
            <c:when test="${adminExists}">
                <p>✅ Admin exists</p>
                <p><strong>Name:</strong> ${adminName}</p>
                <p><strong>Email:</strong> admin@cpfa.com</p>
                <p><strong>Role:</strong> ${adminRole}</p>
                <p><strong>Password:</strong> admin123</p>
            </c:when>
            <c:otherwise>
                <p>❌ Admin user NOT found</p>
            </c:otherwise>
        </c:choose>
    </div>
    
    <div class="${userExists ? 'success' : 'error'}">
        <h3>Test User</h3>
        <c:choose>
            <c:when test="${userExists}">
                <p>✅ User exists</p>
                <p><strong>Name:</strong> ${userName}</p>
                <p><strong>Email:</strong> user@cpfa.com</p>
                <p><strong>Role:</strong> ${userRole}</p>
                <p><strong>Password:</strong> user123</p>
            </c:when>
            <c:otherwise>
                <p>❌ Test user NOT found</p>
            </c:otherwise>
        </c:choose>
    </div>
    
    <div class="info">
        <h3>Next Steps</h3>
        <p>1. Check the console output when you try to login</p>
        <p>2. Look for detailed password matching logs</p>
        <p>3. Try logging in at <a href="/login">/login</a></p>
    </div>
    
    <p><a href="/">← Back to Home</a></p>
</body>
</html>
