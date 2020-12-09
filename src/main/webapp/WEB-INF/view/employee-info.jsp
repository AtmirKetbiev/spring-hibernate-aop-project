<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h2>Employee info</h2>

    <form:form action="saveEmployee" modelAttribute="employee">
        <%--Невидимое поле чтобы ее заполнило id--%>
        <form:hidden path="id"/>

        Name <form:input path="name"/>
        <br><br>
        Surname <form:input path="surname"/>
        <br><br>
        Department <form:input path="department"/>
        <br><br>
        Salary <form:input path="salary"/>
        <br><br>
        <input type="submit" value="ok">
    </form:form>
</body>
</html>
