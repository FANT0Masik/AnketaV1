<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 04.11.2020
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Anketa</title>
  </head>
  <body>
  <form action="/anketa" method="POST">
    Имя: <input type="text" name="name"><br>
    Фамилия: <input type="text" name="surname"><br>
    Ваш возраст: <input type="text" name="age"><br>
    Ваш пол? <br>
    <input type="radio" name="gender" value="male"> Мужчина <br>
    <input type="radio" name="gender" value="female"> Женщина<br>
    Ваш любимый питомец?<br>
    <input type="radio" name="pet" value="likeCat"> Кот <br>
    <input type="radio" name="pet" value="likeDog"> Собака <br>
    <input type="submit">
  </form>
  </body>
</html>
