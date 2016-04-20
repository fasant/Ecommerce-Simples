<%-- 
    Project     : e-KipeNiko Shop
    Customer    : IFSP - DWE-I6
    P.O.        : Profº Mestre Leandro Camara Ledel
    Dev. Group  : Equipenico - Fábio Santos, Márcio Ricardo, Fernando Brito
    Document    : comprarSemCarrinho.jsp
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
        <title>Comprar na e-KipeNiko Shop</title>
    </head>
    <body>
        Id do Produto: <%= request.getParameter("comprarProduto")%>
        <br>
        <sql:setDataSource var="minhaBase" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/eloja" user="root" password=""/>

        <!--Verificar se quantidade é maior que ZERO-->
        <sql:update dataSource="${minhaBase}" var="resultado">
            UPDATE produto 
            SET quantidade = quantidade -1 
            WHERE id_prod=<%=request.getParameter("comprarProduto")%>
        </sql:update>
        <c:redirect url="exibeProdutos.jsp" />
        <footer>
            <p><b>Por: </b>Equipenico - IFSP/Hto<br>
                <a href="http://ifsp.hto.edu.br">ENTRE EM CONTATO</a>
            </p>
        </footer>
    </body>
</html>