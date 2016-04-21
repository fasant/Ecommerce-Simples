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
        <% int idProduto = Integer.parseInt(request.getParameter("idProduto"));%>
        <br>
        <sql:setDataSource var="minhaBase" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/eloja" user="root" password=""/>

        <sql:query dataSource="${minhaBase}" var="result">
            SELECT * FROM produto WHERE idProduto = <%= idProduto%>;
        </sql:query>
        <table border="1" width="100%">
            <tr>
                <th>ID do Produto</th>
                <th>Nome</th>
                <th>Preço</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.idProduto}"/></td>
                    <td><c:out value="${row.nomeProduto}"/></td>
                    <td><c:out value="${row.valor}"/></td>
                </tr>
            </c:forEach>
        </table>
        <form action="efetuaCompra.jsp" method="POST">
            Produto Id: <input type="integer" name="idProduto" value="<%= idProduto %>" />
            <input type="submit" value="Comprar" />
        </form>
        <footer>
            <p><b>Por: </b>Equipenico - IFSP/Hto<br>
                <a href="http://ifsp.hto.edu.br">ENTRE EM CONTATO</a>
            </p>
        </footer>
    </body>
</html>