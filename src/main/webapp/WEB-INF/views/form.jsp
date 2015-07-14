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
    <sf:form commandName="film" action="/create" method="post" cssClass="form-horizontal">
        <sf:hidden path="id"/>
         <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Title</label>
             <div class="col-sm-10">
                <sf:input path="title" class="form-control"/>
             </div>
        </div>
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Director</label>
            <div class="col-sm-10">
                <sf:input path="director"  class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Genre</label>
            <div class="col-sm-10">
                <sf:select path="genre" items="${genres}" cssClass="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Length</label>
            <div class="col-sm-10">
                <sf:input path="filmlength" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Trailer URL</label>
            <div class="col-sm-10">
                <sf:input path="trailer" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-danger">SAVE</button>
            </div>
        </div>
    </sf:form>
</div>
</body>
</html>
