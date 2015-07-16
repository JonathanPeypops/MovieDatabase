<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 13/07/15
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body {
            background: url("http://wallpick-download.com/wp-content/uploads/2015/02/White-Background-40.png")
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <title>Film details</title>
</head>
<body>
<div class="container">
    <table class="table table-striped">
        <tr>
            <td><h1><span>Title : </span>${film.title}</h1></td>
        <td rowspan="4"><img src="${film.coverimg}" class="img-thumbnail"/></td>
        </tr>
        <tr>
            <td><h2><span>Director : </span>${film.director}</h2></td>
        </tr>
        <tr>
            <td><h3><span>Length : </span> ${film.filmlength}</h3></td>
        </tr>

     <tr>
        <td>
            <iframe width="420" height="315" src="${film.trailer}" frameborder="0" allowfullscreen></iframe>
        </td>
        </tr>
    </table>
    <div class="container">
        <table class="table table-hover">
            <tr>
                <th class="col-md-6">Character name</th>
                <th class="col-md-6">Actor name</th>
            </tr>
            <c:forEach var="character" items="${film.characters}">

                <tr>
                    <td class="col-md-6"> ${character.name} </td>
                    <td class="col-md-6"><a
                            href="/actors/details?id=${character.actor.id}"> ${character.actor.firstname} ${character.actor.lastname}</a>
                    </td>
                </tr>

            </c:forEach>
        </table>
    </div>
    <a href="/" class="btn btn-info">Back</a>
</div>
</body>
</html>
