<%@ page import="project.app.model.User" %><%--
  Created by IntelliJ IDEA.
  User: alex_pro
  Date: 9/6/19
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="UTF-8">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        #myBody{
            text-align: center;!important;
            margin:0;
            background: url("https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/calm-reflective-water-background_bjnehswwh__F0000.png");!important;
        }







    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <title>Database</title>
</head>
<body id="myBody">

<div class="container" style="margin-top: 50px;">
    <div class="row">
        <div class="col-1 alert alert-primary" style="margin:0;">id</div>
        <div class="col-2 alert alert-primary" style="margin:0;">name</div>
        <div class="col-2 alert alert-primary" style="margin:0;">age</div>
        <div class="col-2 alert alert-primary" style="margin:0;">company</div>
        <div class="col-2 alert alert-primary" style="margin:0;">money</div>
        <div class="col-3" style="margin: 0;padding: 0">
            <div class="col-11 alert alert-warning" style="margin: 0px 0px 0px 20px;">
                <c:url value="/add" var="add"/>
                <a href="${add}">Add user</a>
            </div>

        </div>
    </div>
<c:forEach var="user" items="${users}">
    <div class="row">
        <div class="col-1 alert alert-primary" style="margin:0;">${user.id}</div>
        <div class="col-2 alert alert-success" style="margin:0;">${user.name}</div>
        <div class="col-2 alert alert-success" style="margin:0;">${user.age}</div>
        <div class="col-2 alert alert-success" style="margin:0;">${user.company}</div>
        <div class="col-2 alert alert-success" style="margin:0;">${user.money}</div>
        <div class="col-3">

            <div class="row" style="margin-top:1px;">
                <div class="col alert alert-dark" style="margin: 0px 0px 0px 20px;">
                    <a href="/edit/${user.id}">edit</a>
                </div>
                <div class="col alert alert-dark" style="margin:0;">
                    <a href="/delete/${user.id}">delete</a>

                </div>
            </div>

        </div>

    </div>

</c:forEach>

</div>


   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
