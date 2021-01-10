<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>Edit Post</title>
    <style>
        .lmargin{
            margin-left: 10pt;
        }
    </style>
</head>


<body>
    <div class="lmargin">
        <h1>Edit Post</h1>
    </div>
    <form action="post" method="POST">
        <div class="lmargin">
            <button type="submit" name="action" value="save" class="btn btn-outline-primary">Save</button>
            <button type="submit" name="action" value="list" class="btn btn-outline-warning">Close</button>
            <button type="submit" name="action" value="preview" class="btn btn-outline-info">Preview</button>
            <button type="submit" name="action" value="delete" class="btn btn-outline-danger">Delete</button>
        </div>
        <input type="hidden" name="username" id="username" value='${param.username}' class="form-control"/>
        <input type="hidden" name="postid" id="postid" value='${param.postid}' class="form-control"/>
        <br>
        <div class="col-md-5 form-group">
            <label for="title">Title</label>
            <c:if test="${not empty param.title}">
                <input type="text" class="form-control" name="title" id="title"  value='${param.title}'>
            </c:if>
            <c:if test="${empty param.title}">
                <input type="text" class="form-control" name="title" id="title" value='${requestScope.title}'>
            </c:if>
        </div>
        <br>
        <div class="col-md-5 form-group">
            <label for="body">Body</label>
            <c:if test="${not empty param.body}">
                <textarea style="height: 10rem;" class="form-control" name="body" id="body">${param.body}</textarea>
            </c:if>
            <c:if test="${empty param.body}">
                <textarea style="height: 10rem;" class="form-control" name="body" id="body">${requestScope.body}</textarea>
            </c:if>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>

</html>
