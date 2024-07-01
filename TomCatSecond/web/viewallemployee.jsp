<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Employee" %>
<%@page import="dao.EmployeeDao" %>
<%@page import="java.util.*" %>

<%
    List<Employee> list = EmployeeDao.viewAllEmployee();
    request.setAttribute("list", list);
%>

<table border="1"> 
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
            <th>Action</th>
        </tr>
    </thead>

    <tbody>

        <c:forEach var="e" items="${list}">

            <tr>
                <td>${e.getId()}</td>
                <td>${e.getName()}</td>
                <td>${e.getEmail()}</td>
                <td>${e.getAddress()}</td>
                <td>
                    <a href="#">Edit</a>
                    <a href="#">Delete</a>
                </td>
            </tr>

        </c:forEach>
    </tbody>
</table>
