<%--
  Created by IntelliJ IDEA.
  User: mnew0
  Date: 2025-03-07
  Time: 오후 1:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 50%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: center;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }

        #item_table > tbody > tr > td > img{
            width: 100px;
            height: 100px;
        }
    </style>
</head>
<body>
  <h1>Next Page</h1>
  <table id="item_table">
      <thead>
      <tr>
          <th>Image</th>
          <th>ID</th>
          <th>Name</th>
          <th>price</th>
      </tr>
      </thead>

      <tbody>
      <c:forEach var="it" items="${myitems}">
          <tr>
              <td><img src="/img/${it.imgName}"></td>
              <td>${it.id}</td>
              <td>${it.name}</td>
              <td>${it.price}</td>
          </tr>
      </c:forEach>
      </tbody>
  </table>

</body>
</html>
