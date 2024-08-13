<%-- 
    Document   : teacheraddform
    Created on : Aug 13, 2024, 3:43:37 PM
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
        <h1>Teacher Form</h1>

        <form action="saveteacher.jsp" method="post">

            Name: <input type="text" name="name"> <br>
            
            <div class="form-group">
                <label for="subject">Department</label>
                <select name="department" id="subject" class="form-control">
                    <option value="">Please Select</option>
                    <option value="Java">Java</option>
                    <option value="GAVE">GAVE</option>
                    <option value="NT">NT</option>
                </select>
            </div>
            
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
            

            <input type="submit" value="Save">

        </form>

    </body>
</html>
