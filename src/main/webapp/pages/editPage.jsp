<%--
  Created by IntelliJ IDEA.
  User: alex_pro
  Date: 9/6/19
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .row{
            margin-top:25px;
        }
        body{
            background: url("https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/calm-reflective-water-background_bjnehswwh__F0000.png");
        }

    </style>
        <title>Edit</title>
</head>
<body>
      <c:url value="/edit" var="var"/>
      <form action="${var}" method="POST">

      <div class="container d-flex justify-content-center" style="margin-top: 10px;">

          <div class="container">
           <input type="hidden" name="id" value="${user.id}">



           <div class="container alert alert-info" style="width:350px;">
               <div class="row d-flex justify-content-center">

                   <label for="name">Name</label>
               </div>
               <div class="row d-flex justify-content-center" >
                   <input type="text" name="name" id="name" accept-charset="UTF-8" placeholder="${user.name}">

               </div>
           </div>





           <div class="container alert alert-info" style="width:350px;">

               <div class="row d-flex justify-content-center">
                   <label for="age">Age</label>

               </div>
               <div class="row d-flex justify-content-center">
                   <input type="number" name="age" id="age" pattern="^[0-9]+$" placeholder="${user.age}" >

               </div>
           </div>



           <div class="container alert alert-info" style="width:350px;">

               <div class="row d-flex justify-content-center">
                   <label for="company">Company</label>
               </div>
               <div class="row d-flex justify-content-center">
                   <input type="text" name="company" id="company"  accept-charset="UTF-8" placeholder="${user.company}">

               </div>

           </div>




           <div class="container alert alert-info" style="width:350px;">

               <div class="row d-flex justify-content-center">
                   <label for="money">Money</label>
               </div>
               <div class="row d-flex justify-content-center">
                   <input type="number" name="money" id="money" pattern="^[0-9]+$" placeholder="${user.money}" >

               </div>
           </div>



           <div class="row d-flex justify-content-center">
               <input class="btn btn-info" type="submit" value="edit user">
           </div>
       </div>
      </div>
   </form>






      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
