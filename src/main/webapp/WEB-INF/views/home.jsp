<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Movies</h1>

<table border="2">
    <tr>
        <th>ID</th>
        <th>Title</th>
    </tr>

    <c:forEach var="films" items="${films}">

        <tr>
            <td> ${films.id} </td>
            <td><a href="film/${films.id}">${films.title}</a></td>
        </tr>

    </c:forEach>
</table>
</body>
</html>
