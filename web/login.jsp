<%-- 
    Document   : login
    Created on : 15/05/2018, 15:52:47
    Author     : PauloHGama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1 align="center">Login</h1>
        <form method="post" action="home.jsp?id=<%= request.getParameter("decisao") %>">
            <table align="center">
                <tr align="center">
                    <th>Usuario: </th>
                    <td><input type="text" name="user" value="" required=""/></td>
                    <td></td>
                </tr>
                <tr align="center">
                    <th>Senha: </th>
                    <td><input type="password" name="senha" value="" required=""/></td>
                    <td><input type="submit" name="acessar" value="Entrar"/></td>
                </tr>
                <tr align="center">
                    <td><a href="">Esqueci minha senha</a></td>
                    <td><a href="">Solicitar Cadastro</a></td>
                    <td></td>
                </tr>
            </table>
        </form>
    </body>
</html>
