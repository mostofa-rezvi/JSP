<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.TeacherDao" %>
<%@page import="model.Teacher" %>
<%@page import="java.util.*" %>

<%
    List<Teacher> list= TeacherDao.viewAllTeacher();
    request.setAttribute("list", list);
%>

<table border="1"> 
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Gender</th>
            <th>Action</th>
        </tr>
    </thead>

    <tbody>

        <c:forEach var="t" items="${list}">

            <tr>
                <td>${t.getId()}</td>
                <td>${t.getName()}</td>
                <td>${t.getDepartment()}</td>
                <td>${t.getGender()}</td>
                <td>
                    <a href="updateteacherform.jsp?id=${t.getId()}">Edit</a>
                    <a href="deleteteacher.jsp?id=${t.getId()}">Delete</a>
                </td>
            </tr>

        </c:forEach>
    </tbody>
</table>