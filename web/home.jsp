<%-- 
    Document   : decisao
    Created on : 15/05/2018, 15:52:20
    Author     : PauloHGama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicial</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <% if(session.getAttribute("user") != null){ %><%GetUser u = (GetUser) session.getAttribute("user");%>
        <div class="container">
            <h3>Bem Vindo, <%= u.getNome()%></h3>
        </div>
        <%}%>
    </body>
</html>
