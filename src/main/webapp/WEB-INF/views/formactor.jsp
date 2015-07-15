<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 15/07/15
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
<div class="container">
  <sf:form commandName="actor" action="/createactor" method="post" cssClass="form-horizontal">
    <sf:hidden path="id"/>
    <div class="form-group">
      <label for="firstname" class="col-md-2 control-label">First Name</label>
      <div class="col-md-10">
        <sf:input path="firstname" class="form-control"/>
      </div>
    </div>
    <div class="form-group">
      <label for="lastname" class="col-md-2 control-label">Last Name</label>
      <div class="col-md-10">
        <sf:input path="lastname"  class="form-control"/>
      </div>
    </div>
    <div class="form-group">
      <label for="gender" class="col-md-2 control-label">Gender</label>
      <div class="col-md-10">
        <sf:select path="gender" items="${gender}" cssClass="form-control"/>
      </div>
    </div>
    <div class="form-group">
      <div class="col-md-offset-2 col-md-10">
        <button type="submit" class="btn btn-danger">SAVE</button>
      </div>
    </div>
  </sf:form>
</div>
</body>
</html>
