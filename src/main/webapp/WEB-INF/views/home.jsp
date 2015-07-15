<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h1>Movies</h1>
    <table class="table table-hover">
        <tr>
            <%--<th class="label label-success col-md-2">ID</th>--%>
            <th class="label label-primary col-md-5">Title</th>
            <th class="label label-warning col-md-4">Director</th>
            <th colspan="2" class="label label-info col-md-3">Tools</th>
        </tr>

        <c:forEach var="films" items="${films}">

            <tr>
                <%--<td class="col-md-1"> ${films.id} </td>--%>
                <td class="col-md-4 text-center"><a href="films/details?id=${films.id}">${films.title}</a></td>
                <td class="col-md-3"> ${films.director} </td>
                <td><a class="btn btn-success" href="films/form?id=${films.id}">edit </a></td>
                <td><a class="btn btn-danger" href="film/delete/${films.id}">delete </a></td>
            </tr>

        </c:forEach>
    </table>
    <a href="films/form">
        <button class="btn btn-success">Add film</button>
    </a>
    <a href="/actor" class="btn btn-default">Actors</a>
</div>
</body>
</html>
