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
        <div class="form-control">
            <label for="title" class="col-md-2">Title</label>
            <sf:input path="title" class="col-md-10"/>
        </div>
        <div class="row">
            <label for="title" class="col-md-1 col-md-1-left">Director</label>
            <sf:input path="director" class="col-md-10"/>
        </div>
        <div class="form-group">
            <label for="title" class="col-md-2">Genre</label>
            <sf:input path="genre" class="form-control col-md-10"/>
        </div>
        <div class="form-group">
            <label for="title" class="col-md-2">Length</label>
            <sf:input path="filmlength" class="form-group col-md-10"/>
        </div>
        <button type="submit" class="btn btn-danger">SAVE</button>
    </sf:form>
</div>
</body>
</html>
