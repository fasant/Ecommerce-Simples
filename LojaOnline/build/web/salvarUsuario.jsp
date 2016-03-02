<%-- 
    Document   : salvarUsuario
    Created on : Mar 2, 2016, 1:00:04 PM
    Author     : Fabio Santos
--%>

<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Declaração de variáveis globais --%>
<%!
    String nome, senha, id;
%>
<%-- Leitura das variáveis recebidas por POST
e armazenamento nas variáveis globais --%>
<%
    nome = request.getParameter("nome");
    senha = request.getParameter("senha");
    id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salvar Dados</title>
    </head>
    <body bgcolor="f0f0f0">
        <sql:setDataSource var="minhaBase" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/eloja" user="root" password="senha"/>
        <sql:update dataSource="${minhaBase}" var="resultado">
            INSERT INTO usuario VALUES ('<%= nome%>','<%= senha%>');
        </sql:update>
        <p align="center">Usuário Cadastrado com sucesso!</p>
        <br>
        <p align="center"><a href="index.html">Página Principal</a></p>
    </body>
</html>
