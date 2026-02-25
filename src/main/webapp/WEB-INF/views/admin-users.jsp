<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Users</title>
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
        .badge { padding: 5px 10px; border-radius: 5px; font-size: 0.9em; }
        .badge-admin { background: #dc3545; color: white; }
        .badge-user { background: #667eea; color: white; }
        .badge-active { background: #28a745; color: white; }
        .badge-suspended { background: #ffc107; color: #333; }
        .btn { padding: 8px 15px; border: none; border-radius: 5px; cursor: pointer; text-decoration: none; display: inline-block; font-size: 0.9em; margin: 2px; }
        .btn-delete { background: #dc3545; color: white; }
        .btn-delete:hover { background: #c82333; }
        .btn-suspend { background: #ffc107; color: #333; }
        .btn-suspend:hover { background: #e0a800; }
        .btn-activate { background: #28a745; color: white; }
        .btn-activate:hover { background: #218838; }
        .alert { padding: 15px; margin-bottom: 20px; border-radius: 5px; }
        .alert-success { background: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .alert-error { background: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
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
            <h2>All Users</h2>
            <c:if test="${param.success == 'deleted'}">
                <div class="alert alert-success">User deleted successfully!</div>
            </c:if>
            <c:if test="${param.success == 'status-updated'}">
                <div class="alert alert-success">User status updated successfully!</div>
            </c:if>
            <c:if test="${param.error == 'cannot-delete-self'}">
                <div class="alert alert-error">You cannot delete your own account!</div>
            </c:if>
            <c:if test="${param.error == 'cannot-suspend-self'}">
                <div class="alert alert-error">You cannot suspend your own account!</div>
            </c:if>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${users}" var="u">
                        <tr>
                            <td>${u.id}</td>
                            <td>${u.name}</td>
                            <td>${u.email}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${u.role == 'ADMIN'}">
                                        <span class="badge badge-admin">ADMIN</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge badge-user">USER</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <c:choose>
                                    <c:when test="${u.status == 'SUSPENDED'}">
                                        <span class="badge badge-suspended">SUSPENDED</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge badge-active">ACTIVE</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <c:if test="${u.id != user.id}">
                                    <c:choose>
                                        <c:when test="${u.status == 'SUSPENDED'}">
                                            <a href="/admin/users/toggle-status/${u.id}" class="btn btn-activate" onclick="return confirm('Activate this user?')">Activate</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="/admin/users/toggle-status/${u.id}" class="btn btn-suspend" onclick="return confirm('Suspend this user?')">Suspend</a>
                                        </c:otherwise>
                                    </c:choose>
                                    <a href="/admin/users/delete/${u.id}" class="btn btn-delete" onclick="return confirm('Are you sure you want to delete this user?')">Delete</a>
                                </c:if>
                                <c:if test="${u.id == user.id}">
                                    <span style="color: #999; font-style: italic;">Current User</span>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
