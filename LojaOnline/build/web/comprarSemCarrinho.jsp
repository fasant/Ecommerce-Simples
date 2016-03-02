<%-- 
    Document   : comprarSemCarrinho
    Created on : Mar 2, 2016, 3:53:48 PM
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
        <title>Efetuando Compra</title>
    </head>
    <body>
        Id do Produto: <%= request.getParameter("comprarProduto")%>
        <br>
        <sql:setDataSource var="minhaBase" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/eloja" user="root" password="senha"/>

 <!--Verificar se quantidade é maior que ZERO-->
        <sql:update dataSource="${minhaBase}" var="resultado">
            UPDATE produto 
            SET quantidade = quantidade -1 
            WHERE id=<%=request.getParameter("comprarProduto")%>
        </sql:update>
        <c:redirect url="exibeProdutos.jsp" />
    </body>
</html>