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
    <style>
        body {
            background: url("http://wallpick-download.com/wp-content/uploads/2015/02/White-Background-40.png")
        }
    </style>
    <title>Actor details</title>
</head>
<body>
<h1><span>Name : </span>${actor.firstname} ${actor.lastname}</h1>

<h2>
    <div>${actor.gender}</div>
    <div>${actor.bio}</div>
</h2>
<div>
    <td><img src="${actor.actorimg}" class="img-thumbnail"/></td>
</div>
<a href="/actor" class="btn btn-info">Back</a>
</body>
</html>
