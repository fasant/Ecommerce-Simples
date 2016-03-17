<%-- 
    Document   : exibeProdutos
    Created on : Mar 2, 2016, 3:25:00 PM
    Author     : Fabio Santos
--%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CompreTudo-Produtos</title>
    </head>
    <body bgcolor="f0f0f0">
        <h1>Bem Vindo à CompreTudo.com</h1>
        <h3>Aqui você compra os Vans do Fer Com mais qualidade!</h3>
        <br>
        <h3>Confira nossos produtos:</h3>
        <br>
        <sql:setDataSource var="minhaBase" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/eloja" user="root" password="senha"/>
        <sql:query dataSource="${minhaBase}" var="result">
            SELECT * from produto;
        </sql:query>
        <table border="1" width="100%">
            <tr>
                <th>ID do Produto</th>
                <th>Nome</th>
                <th>Descrição</th>
                <th>Preço</th>
                <th>Quantidade</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.id_prod}"/></td>
                    <td><c:out value="${row.nome}"/></td>
                    <td><c:out value="${row.descricao}"/></td>
                    <td><c:out value="${row.valor}"/></td>
                    <td><c:out value="${row.quantidade}"/></td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <form action="comprarSemCarrinho.jsp" method="POST">
            Comprar Produto Id: <input type="integer" name="comprarProduto" value="" />
            <input type="submit" value="Comprar" />
        </form>
        <a href="index.html">Página Principal</a>
    </body>
</html>