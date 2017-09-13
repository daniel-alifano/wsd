<%-- 
    Document   : logincheck
    Created on : 2017. 9. 11, 오후 6:12:29
    Author     : deocr
--%>

<%@page import="uts.wsd.User"%>
<%@page import="uts.wsd.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>

        <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="diaryApp" class="uts.wsd.DiaryApplication" scope="application">
            <jsp:setProperty name="diaryApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

    </head>
    <body>
        <%
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Users users = diaryApp.getUsers();
            User user = users.login(email, password);

        %>
        <%      if (user != null) {
                session.setAttribute("user", user);
                //UsersPrinter.html.print(filePath, out);
        %>
        <p>Login successful. Click <a href="index.jsp"><u>here</u></a> to return to the main page.</p>
        <% } else { %>
        <p>Password incorrect. Click <a href="login.jsp"><u>here</u></a> to try again.</p>
        <% } %>

    </body>
</html>