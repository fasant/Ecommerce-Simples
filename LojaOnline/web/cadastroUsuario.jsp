<%-- 
    Document   : cadastro de Usuario
    Created on : Mar 2, 2016, 12:43:51 PM
    Author     : Fabio Santos
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
    </head>
    <body bgcolor="f0f0f0">
        <form action="salvarUsuario.jsp" method="POST">
            <table border="0" align="center">
                <thead>
                    <tr>
                        <td colspan="2" align="center"><h2>Cadastro de Usuário</h2></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nome: </td>
                        <td><input type="text" name="nome" value="" /></td>
                    </tr>
                    <tr>
                        <td>Senha: </td>
                        <td><input type="password" name="senha" value="" /></td>
                    </tr>
                        <td><input type="reset" value="Limpar" /></td>
                        <td><input type="submit" value="Cadastrar" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><a href="index.html">Página Principal</a></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>