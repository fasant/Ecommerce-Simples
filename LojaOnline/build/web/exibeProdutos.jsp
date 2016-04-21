<%-- 
    Project     : e-KipeNiko Shop
    Customer    : IFSP - DWE-I6
    P.O.        : Profº Mestre Leandro Camara Ledel
    Dev. Group  : Equipenico - Fábio Santos, Márcio Ricardo, Fernando Brito
    Document    : exibeProdutos.jsp
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
        <title>Produtos e-KipeNiko Shop</title>
    </head>
    <body bgcolor="f0f0f0">
        <header>
            <table id="tabela_titulo">
                <tr>
                    <td id="coluna_titulo">
                        <label ><b>e-KipeNiko Shop</b></label>
                    </td>
                    <!--<td id="coluna_info_usuario">
                        <label>DEV, INSERIR USER AQUI!!!</label>
                    </td>-->
                </tr>
                <tr>
                <h3>Aqui você compra os Vans do Fer Com mais qualidade!</h3>
                </tr>
            </table>
        </header>
        <h3>Confira nossos produtos:</h3>
        <br>
        <sql:setDataSource var="minhaBase" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/eloja" user="root" password=""/>
        <sql:query dataSource="${minhaBase}" var="result">
            SELECT * from produto;
        </sql:query>
        <table border="1" width="100%">
            <tr>
                <th>ID do Produto</th>
                <th>Nome</th>
                <th>Preço</th>
                <th>Quantidade</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.idProduto}"/></td>
                    <td><c:out value="${row.nomeProduto}"/></td>
                    <td><c:out value="${row.valor}"/></td>
                    <td><c:out value="${row.quantidade}"/></td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <form action="comprarSemCarrinho.jsp" method="POST">
            Comprar Produto Id: <input type="integer" name="idProduto" value="" />
            <input type="submit" value="Comprar" />
        </form>
        <a href="index.html">Página Principal</a>
        <footer>
            <p><b>Por: </b>Equipenico - IFSP/Hto<br>
                <a href="http://ifsp.hto.edu.br">ENTRE EM CONTATO</a>
            </p>
        </footer>
    </body>
</html>