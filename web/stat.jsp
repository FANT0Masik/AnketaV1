<%@ page import="java.util.concurrent.atomic.AtomicInteger" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 04.11.2020
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Statistika</title>
</head>
<body>
<% AtomicInteger male=(AtomicInteger) request.getAttribute("male");
   AtomicInteger female=(AtomicInteger) request.getAttribute("female");
   AtomicInteger likeCat=(AtomicInteger) request.getAttribute("likeCat");
   AtomicInteger likeDog=(AtomicInteger) request.getAttribute("likeDog");
       %>
Статистика <br>
Мужчин - <%= male%> <br>
Женщин - <%= female%> <br>
Любители кошек - <%= likeCat%><br>
Любители собак - <%= likeDog%><br>
<form action="index.jsp"> <button type="submit"> Заполнить еще одну анкету </button>
</form>
</body>
</html>
