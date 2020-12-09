<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: atmir
  Date: 08.12.2020
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>All Employees</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Operation</th>
        </tr>
        <c:forEach var="emp" items="${allEmps}">
            <%--Создаем ссылку--%>
            <c:url var="updateButton" value="/updateInfo">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>

            <c:url var="deleteButton" value="/deleteEmployee">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>

            <tr>
                <td>${emp.name}</td>
                <td>${emp.surname}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>
                <td>
                    <input type="button" value="update"
                           onclick="window.location.href = '${updateButton}'"/>
                </td>
                <td>
                    <input type="button" value="delete"
                           onclick="window.location.href = '${deleteButton}'"/>
                </td>
            </tr>
        </c:forEach>
    </table>
<br>
<br>

<input type="button" value="Add" onclick="window.location.href = 'addNewEmployee'"/>

</body>
</html>