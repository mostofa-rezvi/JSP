<%-- 
    Document   : studentaddform
    Created on : Jul 1, 2024, 12:03:41 PM
    Author     : Rezvi
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
            
            Name: <input type="text" name="name"> <br> <br>
            Email: <input type="email" name="email"> <br> <br>
            Address: <input type="text" name="address"> <br> <br>
            Cell: <input type="text" name="cell"> <br> <br>
            
            <input type="submit" value="Save">
            
        </form>
        
    </body>
</html>
