<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
  <title>UserData</title>

  <style type="text/css">
    .tg {
      border-collapse: collapse;
      border-spacing: 0;
      border-color: #ccc;
    }

    .tg td {
      font-family: Arial, sans-serif;
      font-size: 14px;
      padding: 10px 5px;
      border-style: solid;
      border-width: 1px;
      overflow: hidden;
      word-break: normal;
      border-color: #ccc;
      color: #333;
      background-color: #fff;
    }

    .tg th {
      font-family: Arial, sans-serif;
      font-size: 14px;
      font-weight: normal;
      padding: 10px 5px;
      border-style: solid;
      border-width: 1px;
      overflow: hidden;
      word-break: normal;
      border-color: #ccc;
      color: #333;
      background-color: #f0f0f0;
    }

    .tg .tg-4eph {
      background-color: #f9f9f9
    }
  </style>

</head>
<body>
<h1>Book Details</h1>

<table class="tg">
   <tr>
              <th width="80">ID</th>
              <th width="120">NAME</th>
              <th width="80">AGE</th>
              <th width="120">isAdmin</th>
              <th width="120">CREATED_DATA</th>
              <th width="60">Edit</th>
              <th width="60">Delete</th>
          </tr>
          <c:forEach items="${listUsers}" var="user">
              <tr>
                  <td>${user.id}</td>
                  <td><a href="/userdata/${user.id}" target="_blank">${user.userName}</a></td>
                  <td>${user.userAge}</td>
                  <td>${user.userisAdmin}</td>
                  <td>${user.usercreatedData}</td>

                  <td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>
                  <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a></td>
              </tr>
          </c:forEach>
</table>
</body>
</html>