<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>Post List</title>
    <style>
        .lmargin{
            margin-left: 10pt;
        }
        .table td, table th{
        text-align: center;   
        }
    </style>
</head>

<body>
    <br>
    <div class="lmargin">
        <form action="post" id="0" method="POST">
            <input type="hidden" name="username" value="${param.username}">
            <input type="hidden" name="postid" value="0">
            <input type="hidden" name="title" value="">
            <input type="hidden" name="body" value="">
            <button type="submit" name="action" value="open" class="btn btn-primary btn-lg">New Post</button></a>
        </form>
    </div>
    <br>
    <div>
     <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">Title</th>
            <th scope="col">Created</th>
            <th scope="col">Modified</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${list}" var="pe" varStatus="currCount">
                <form id="${currCount.count}" action="post" method="POST">
                    <tr>
                        <td>${pe.getTitle()}</td>
                        <td>${pe.getCreated()}</td>
                        <td>${pe.getModified()}</td>
                        <td>
                            <button type="submit" name="action" value="open" class="btn btn-outline-primary">Open</button>
                            <button type="submit" name="action" value="delete" class="btn btn-outline-danger">Delete</button>
                        </td>
                        <input type="hidden" name="username" value="${pe.getUsername()}"> 
                        <input type="hidden" name="postid" value="${pe.getPostid()}">
                    </tr>
                </form>
            
        </c:forEach>
        </tbody>
      </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>

</html>
