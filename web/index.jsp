<%@page import="storage.*"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.util.*, java.sql.*"contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <link rel = "stylesheet" type = "text/css" HREF = "Main.css">
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
        <%
            String path = application.getRealPath("WEB-INF/users.xml");
        %>
        <jsp:useBean id="usersApplication" class = "storage.usersApplication" scope ="application">
        <jsp:setProperty name ="usersApplication" property="filePath" value ="<%=path%>"/> 
        </jsp:useBean>
        <%  
            users users = usersApplication.getUsers();
        %>
    <body>
        <% 
            String username = request.getParameter("user");
            String password = request.getParameter("pass");
            user user = users.login(username, password); 
            if (user != null) {
                session.setAttribute("user", user); %>
        <script LANGUAGE="JavaScript">
                         // redirect to main after 4 seconds
                    var time = 3; 
                    var timelong = 0;
                         //reduce time
                    function diplaytime() {
                        document.all.his.innerHTML = time - timelong;
                        timelong++;
                    }
                         //redirection
                    function redirect() {
                        window.location.href = "/files/";
                    }
                    timer = setInterval('diplaytime()', 1000);
                    timer = setTimeout('redirect()', time * 1000);
                </script>
                <p id="p2">Logged in. Redirecting in 5 seconds.</p>                
            <% } else if (user == null) {
                boolean usernameFlag = false;
                boolean passwordFlag = false;
                    for (user u : users.getList()) {
                        if (username!= null && !username.equals(u.getUsername())) {
                            usernameFlag = true;
                        } else if (username != null && username.equals(u.getUsername())) {
                            passwordFlag = true;
                        }
                    }
                    if (usernameFlag == true && passwordFlag == false) {
                        %><p id ="p2"><font color ="red">Username not found</font></p><%
                    } else if (passwordFlag == true) {
                        %><p id ="p2"><font color ="red">Incorrect password</font></p><%
                    }
            %>
            <form method="post" action="index.jsp">
                <div class ="center">
                    <table class="register">
                        <tr><td><input class="button" name="user" placeholder="Enter username ..."></td></tr>
                        <tr><td><input class="button" type ="password" name="pass" placeholder="Enter password"></td></tr>
                        <input type="submit" name="update" value=" Apply " 
                            style="position: absolute; height: 0px; width: 0px; border: none; padding: 0px;"
                             hidefocus="true" tabindex="-1"/>
                     </table>
                </div>
            </form>
                <% } %>
    </body>
</html>
