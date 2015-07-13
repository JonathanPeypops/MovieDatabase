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

<div class="container">
    <table border="2">
        <tr>
            <th class="label label-success col-md-3">ID</th>
            <th class="label label-primary col-md-6">Title</th>
            <th class="label label-warning col-md-3">Director</th>
        </tr>

        <c:forEach var="films" items="${films}">

            <tr>
                <td class="col-md-3"> ${films.id} </td>
                <td class="col-md-6"><a href="films/details?id=${films.id}">${films.title}</a></td>
                <td class="col-md-3"> ${films.director} </td>
            </tr>

        </c:forEach>
    </table>
    <a href="films/form"><button class="btn btn-success">Add film</button></a>
</div>
</body>
</html>
