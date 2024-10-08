<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.StudentDao" %>
<%@page import="model.Student" %>
<%@page import="java.util.*" %>

<%
    List<Student> list= StudentDao.viewAllStudent();
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

        <c:forEach var="s" items="${list}">

            <tr>
                <td>${s.getId()}</td>
                <td>${s.getName()}</td>
                <td>${s.getEmail()}</td>
                <td>${s.getAddress()}</td>
                <td>
                    <a href="updatestudentform.jsp?id=${s.getId()}">Edit</a>
                    <a href="deletestudent.jsp?id=${s.getId()}">Delete</a>
                </td>
            </tr>

        </c:forEach>
    </tbody>
</table>