<%@page import="dao.StudentDao" %>
<%@page import="model.Student" %>

<%
    String id = request.getParameter("id");
    Student s  = StudentDao.getById(Integer.parseInt(id));
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Student Update Form</h1>

        <form action="updatestudent.jsp" method="post">
            <input type="hidden" name="id" value="<%=s.getId()%>">

            Name: <input type="text" name="name" value="<%=s.getName()%>"> <br>
            Email: <input type="email" name="email" value="<%=s.getEmail()%>"> <br>
            Gender: <div class="form-group">
                <label for="gender">Gender</label>
                <div>
                    <label>
                        <input type="radio" name="gender" value="Male" <%= "Male".equals(s.getGender()) ? "checked" : "" %> /> Male
                    </label>
                    <label>
                        <input type="radio" name="gender" value="Female" <%= "Female".equals(s.getGender()) ? "checked" : "" %> /> Female
                    </label>
                    <label>
                        <input type="radio" name="gender" value="Others" <%= "Others".equals(s.getGender()) ? "checked" : "" %> /> Others
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="subject">Subject</label>
                <select name="subject" id="subject" class="form-control">
                    <option value="">Please Select</option>
                    <option value="Java" <%= "Java".equals(s.getSubject()) ? "selected" : "" %>>Java</option>
                    <option value="GAVE" <%= "GAVE".equals(s.getSubject()) ? "selected" : "" %>>GAVE</option>
                    <option value="NT" <%= "NT".equals(s.getSubject()) ? "selected" : "" %>>NT</option>
                </select>
            </div>

            <input type="submit" value="Save">

        </form>

    </body>
</html>