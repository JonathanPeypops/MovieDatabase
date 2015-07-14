<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
    <sf:form commandName="film" action="/create" method="post">
        <sf:hidden path="id"/>
        <div class="form-group">
            <label for="title">Title</label>
            <sf:input path="title" class="form-control"/>
        </div>
        <button type="submit" class="btn btn-danger">ADD</button>
    </sf:form>
</div>
</body>
</html>
