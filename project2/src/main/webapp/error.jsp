<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Invalid Request</title>
    
</head>

<body>
    <div>
        <h1>Invalid Request</h1>
        <h2>Request</h2>
        <strong>action:</strong>
        <%= request.getParameter("action") %><br>
        <strong>username:</strong>
        <%= request.getParameter("username") %><br>
        <strong>postid:</strong>
        <%= request.getParameter("postid") %><br>
        <strong>title:</strong>
        <%= request.getParameter("title") %><br>
        <strong>body:</strong>
        <%= request.getParameter("body") %><br>

        <h2>Parsed Request</h2>
        <strong>action:</strong>
        ${param.action}<br>
        <strong>username:</strong>
        ${param.username}<br>
        <strong>postid:</strong>
        ${param.postid}<br>
        <strong>title:</strong>
        ${param.title}<br>
        <strong>body:</strong>
        ${param.body}<br>

        <h2>Reason of Error</h2>
        <%= request.getAttribute("error") %><br>
    </div>
</body>

</html>
