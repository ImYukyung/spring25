<%--
  Created by IntelliJ IDEA.
  User: mnew0
  Date: 2025-03-07
  Time: 오전 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/index.css">
    <script src="/js/index.js"></script>
</head>

<body>
    <h1>Day2 Main Page</h1>
    <h2>Header2</h2>
    <h5><a href="/next">Next</a></h5>
    <h3>${name}</h3>
    <h3>${age}</h3>
    <c:if test="${name == 'James'}">
        <h3>미국사람</h3>
    </c:if>
    <c:choose>
        <c:when test="${age >= 20}">
            <h4>성인</h4>
        </c:when>
        <c:otherwise>
            <h4>미성년자</h4>
        </c:otherwise>
    </c:choose>
    <img src="/img/p1.jpg">
    <span onclick="spanClick();">Span</span>
</body>
</html>
