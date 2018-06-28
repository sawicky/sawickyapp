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
            user user = (user)session.getAttribute("user");
            
        %>
        <jsp:useBean id="usersApplication" class = "storage.usersApplication" scope ="application">
        <jsp:setProperty name ="usersApplication" property="filePath" value ="<%=path%>"/> 
        </jsp:useBean>
        <style type="text/css">
            body {
                background-image: url('/media/bkg-blu.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>

        <%  
            usersApplication.setFilePath(path);
            users users = usersApplication.getUsers();
            usersApplication.saveUsers();
            if (session.getAttribute("user") != null) {
                if (user != null) { 
                    %><jsp:include page='../WEB-INF/list.html' flush="true"/>
                      
                      <img src="../media/summary.png" alt="This shit ain't free">
                      <p id="p2">Source code for this web server is hosted on <a href ="https://github.com/sawicky/sawickyapp">Github</a></p><%
                }
            } else  {   %>
                        <p id="p2">You're not logged in</p><br>
                    <%}%>

    <body id="filesbody">
       
    </body>
</html>
