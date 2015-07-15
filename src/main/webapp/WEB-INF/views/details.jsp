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
    <title></title>
</head>
<body>
<h1><span>Title : </span>${film.title}</h1>
<h2><span>Director : </span>${film.director}</h2>
<h3><span>Length : </span> ${film.filmlength}</h3>
<iframe width="420" height="315" src="${film.trailer}" frameborder="0" allowfullscreen></iframe>
<img src="${film.coverimg}" class="img-thumbnail" height="360px"/>
</body>
</html>
