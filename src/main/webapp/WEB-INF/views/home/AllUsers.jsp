<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>

    <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.2.1/solar/bootstrap.min.css" rel="stylesheet" integrity="sha384-eEgFc00/DZ7ZxynbWKmCPG4M//a5puGMS+QpGal8QYF56ApHqwXSuDOZ4PbVF1L6" crossorigin="anonymous">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="http://localhost:8080/home">HOME</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarColor02">
            <ul class="navbar-nav mr-auto">
                <c:if test="${user != null}">

                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8080/user/edit">Edit Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8080/recipe/save">Add new Recipe</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8080/user/profile">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8080/user/logout">Log Out</a>
                    </li>

                </c:if>

                <c:if test="${user.admin}">

                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8080/user/admin">Admin panel</a>
                    </li>

                </c:if>

                <c:if test="${user == null}">
                    <a class="btn btn-secondary my-2 my-sm-0"  href="http://localhost:8080/user/login">Log In</a>
                    <a class="btn btn-secondary my-2 my-sm-0" href="http://localhost:8080/user/save">Register</a>


                </c:if>
            </ul>

        </div>
    </nav>
</head>


<body>


<%--<c:forEach items="${users}" var="user">--%>

<%--<div class="card border-secondary mb-3" style=" float:left; width: 32rem; height: 28%; overflow: auto; margin-bottom:-60px;">--%>
    <%--<div class="card-header">User Login ${user.login}</div>--%>
    <%--<div class="card-body">--%>
        <%--<h4 class="card-title">User Brewery name ${recipe.getUser().getLogin()} added : ${recipe.dateTime} </h4>--%>
        <%--<p class="card-text">Process : ${recipe.process} </p>--%>
        <%--<p><a href="http://localhost:8080/recipe/${recipe.getId()}">Show Recipe Details and Add Comment</a></p>--%>
    <%--</div>--%>
<%--</div>--%>
<%--</c:forEach>--%>

<table class="table table-hover">
    <thead>
    <tr>
        <th scope="col">User Login</th>
        <th scope="col">User Brewery Name</th>
        <th scope="col">User Recipes</th>
    </tr>
    </thead>
    <tbody>
<c:forEach items="${users}" var="user">
    <tr class="table-active">

        <td>"${user.login}"</td>
        <td>"${user.breweryName}</td>
        <td><a class="btn btn-dark" href="http://localhost:8080/home/user/recipes/${user.id}">Recipes</a></td>
    </tr>
</c:forEach>
    </tbody>
</table>

<%@include file="/WEB-INF/views/footer.jsp"%>