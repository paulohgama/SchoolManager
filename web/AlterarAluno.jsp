<%-- 
    Document   : cadastro
    Created on : 15/05/2018, 15:52:55
    Author     : PauloHGama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Aluno</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <% if(session.getAttribute("user") != null) { GetUser u = (GetUser) session.getAttribute("user"); %>
        <% if (u.getId() != 1) { %>
        <%@include file="WEB-INF/jspf/alterarAluno.jspf" %>
        <%}else{%>
        <form>
            <div class="form-group">
                <label for="prof">Professores:</label>
                <select class="form-control" id="prof">
                    <option selected disabled>Selecione...</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Buscar</button>
            
        </form>
        <%}}%>
    </body>
</html>
