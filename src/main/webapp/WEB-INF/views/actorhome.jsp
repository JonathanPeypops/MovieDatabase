<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 15/07/15
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <style>
        body {
            background: url("http://wallpick-download.com/wp-content/uploads/2015/02/White-Background-40.png")
        }
    </style>
    <title>Actors</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1>Actors</h1>
    <table class="table table-hover">
        <tr>
            <th class="label label-primary col-md-4">First name</th>
            <th class="label label-warning col-md-4">Last name</th>
            <th class="label label-info col-md-2">Gender</th>
            <th colspan="2" class="label label-info col-md-2"></th>
        </tr>

        <c:forEach var="actors" items="${actors}">

            <tr>
                <td class="col-md-4 text-center"><a href="actors/details?id=${actors.id}">${actors.firstname}</a></td>
                <td class="col-md-3"> ${actors.lastname} </td>
                <td class="col-md-2"> ${actors.gender} </td>
                <td class="col-md-3"><a class="btn btn-success" href="actors/form?id=${actors.id}">edit </a></td>
            </tr>

        </c:forEach>
    </table>
    <a href="actors/form">
        <button class="btn btn-success">Add actor</button>
    </a>
    <a href="/" class="btn btn-default">Films</a>
</div>
</body>
</html>
