<%@page import="dao.TeacherDao" %>
<%@page import="model.Teacher" %>

<%
    String id = request.getParameter("id");
    Teacher t  = TeacherDao.getById(Integer.parseInt(id));
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Teacher Update Form</h1>

        <form action="updateteacher.jsp" method="post">
            <input type="hidden" name="id" value="<%=t.getId()%>">

            Name: <input type="text" name="name" value="<%=t.getName()%>"> <br>

            <div class="form-group">
                <label for="subject">Department</label>
                <select name="department" id="subject" class="form-control">
                    <option value="">Please Select</option>
                    <option value="Java" <%= "Java".equals(t.getDepartment()) ? "selected" : "" %>>Java</option>
                    <option value="GAVE" <%= "GAVE".equals(t.getDepartment()) ? "selected" : "" %>>GAVE</option>
                    <option value="NT" <%= "NT".equals(t.getDepartment()) ? "selected" : "" %>>NT</option>
                </select>
            </div>

            <div class="form-group">
                <label for="gender">Gender</label>
                <div>
                    <label>
                        <input type="radio" name="gender" value="Male" <%= "Male".equals(t.getGender()) ? "checked" : "" %> /> Male
                    </label>
                    <label>
                        <input type="radio" name="gender" value="Female" <%= "Female".equals(t.getGender()) ? "checked" : "" %> /> Female
                    </label>
                    <label>
                        <input type="radio" name="gender" value="Others" <%= "Others".equals(t.getGender()) ? "checked" : "" %> /> Others
                    </label>
                </div>
            </div>

            <input type="submit" value="Save">

        </form>

    </body>
</html>