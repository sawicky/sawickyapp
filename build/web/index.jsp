<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.util.*, java.sql.*"contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <link rel = "stylesheet" type = "text/css" HREF = "Main.css">
        <%
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
        %>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
            <form method="post" action="index.jsp">
                <div class ="center">
                    <table class="register">
                        <tr><td><input class="button" name="user" placeholder="Enter username ..."></td></tr>
                        <tr><td><input class="button" name="pass" placeholder="Enter password"></td></tr>
                        <input type="submit" name="update" value=" Apply " 
                            style="position: absolute; height: 0px; width: 0px; border: none; padding: 0px;"
                             hidefocus="true" tabindex="-1"/>
                     </table>
                </div>
            </form>
    </body>
</html>
