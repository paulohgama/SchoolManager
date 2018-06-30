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
        <div class="container">
            <form action="/action_page.php">
                <div class="form-group">
                    <label for="nome">Nome:</label>
                    <input type="text" class="form-control" id="nome">
                </div>
                <div class="form-group">
                    <label for="data">Data de Nascimento:</label>
                    <input type="date" class="form-control" id="data">
                </div>
                <div class="form-group">
                    <label for="rg">RG:</label><input type="text" class="form-control" id="rg">
                </div>
                <div class="form-group">
                    <label for="cpf">CPF:</label><input type="text" class="form-control" id="cpf">
                </div>
                <div class="form-group">
                    <label for="bairro">Bairro:</label>
                    <select class="form-control" id="bairro">
                        <option selected disabled>Selecione...</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="user">Usuario:</label>
                    <input type="text" class="form-control" id="user">
                </div>
                <div class="form-group">
                    <label for="pass">Senha:</label>
                    <input type="password" class="form-control" id="pass">
                </div>
                <div class="form-group">
                    <label for="confpass">Confirmação de Senha:</label>
                    <input type="password" class="form-control" id="confpass">
                </div>
                <div class="form-group">
                    <label for="img">Imagem de perfil:</label>
                    <input type="file" class="form-control" id="img">
                </div>
                <button type="submit" class="btn btn-primary">Cadastrar</button>
            </form>
        </div>
    </body>
</html>
