<%-- 
    Project     : e-KipeNiko Shop
    Customer    : IFSP - DWE-I6
    P.O.        : Profº Mestre Leandro Camara Ledel
    Dev. Group  : Equipenico - Fábio Santos, Márcio Ricardo, Fernando Brito
    Document    : salvarUsuario.jsp
--%>

<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Declaração de variáveis globais --%>
<%!
    String nome, valor, quantidade;
%>
<%-- Leitura das variáveis recebidas por POST
e armazenamento nas variáveis globais --%>
<%
    nome = request.getParameter("nome");
    valor = request.getParameter("valor");
    quantidade = request.getParameter("quantidade");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salvar Produto</title>
    </head>
    <body bgcolor="f0f0f0">
        <sql:setDataSource var="minhaBase" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/eloja" user="root" password=""/>
        <sql:update dataSource="${minhaBase}" var="resultado">
            INSERT INTO produto VALUES (null,'<%= nome%>',<%= valor%>,<%= quantidade%>);
        </sql:update>
        <p align="center">Produto Cadastrado com sucesso!</p>
        <br>
        <p align="center"><a href="cadastraProduto.jsp">Cadastrar Mais Produtos</a></p>
        <br>
        <p align="center"><a href="index.html">Página Principal</a></p>
        <footer>
            <p><b>Por: </b>Equipenico - IFSP/Hto<br>
                <a href="http://ifsp.hto.edu.br">ENTRE EM CONTATO</a>
            </p>
        </footer>
    </body>
</html>
