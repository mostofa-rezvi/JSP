<%-- 
    Document   : studentaddform
    Created on : Jun 30, 2024, 7:21:41 PM
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
        
        <form action="saveStudent.jsp" method="post">
            Name: <input type="text" name="name"> <br>
            Email: <input type="email" name="email"> <br>
            Address: <input type="text" name="address"> <br> 
            Cell: <input type="text" name="cell"> <br>
            
            <input type="submit" value="Save">
        </form>
    </body>
</html>
