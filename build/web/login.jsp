<%-- 
    Document   : login
    Created on : 2017. 9. 11, 오후 6:10:24
    Author     : deocr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="logincheck.jsp" method="POST">
            <table>
                <tr>
                    <td>Email: </td>
                    <td><input type="email" name="email"></td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><input type="password" name="password"</td>
                </tr>
                <tr><td></td><td><input type="submit" value="Login"></td></tr>
            </table>
        </form>
        
    </body>
</html>
