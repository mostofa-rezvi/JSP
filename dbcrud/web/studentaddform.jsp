<%-- 
    Document   : studentaddform
    Created on : Aug 12, 2024, 3:45:14 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Student Form</h1>

        <form action="savestudent.jsp" method="post">

            Name: <input type="text" name="name"> <br>
            Email: <input type="email" name="email"> <br>
            <div class="form-group">
                <label for="gender">Gender</label>
                <label>
                    <input type="radio" name="gender" value="Male"/> Male
                </label>
                <label>
                    <input type="radio" name="gender" value="Female"/> Female
                </label>
                <label>
                    <input type="radio" name="gender" value="Others"/> Others
                </label>
            </div>
            <div class="form-group">
                <label for="subject">Subject</label>
                <select name="subject" id="subject" class="form-control">
                    <option value="">Please Select</option>
                    <option value="Java">Java</option>
                    <option value="GAVE">GAVE</option>
                    <option value="NT">NT</option>
                </select>
            </div>

            <input type="submit" value="Save">

        </form>

    </body>
</html>

