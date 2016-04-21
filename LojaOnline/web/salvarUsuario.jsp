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
        <title>e-KipeNiko Resultado Cadastro</title>
        <style>
            html, body{
                font-family: verdana;
                //width: 400px;
            }
            header, #tabela_titulo{
                width: 100%;
                text-align: center;
                color: red;
                font-size: 50px;
            }
            nav, #tabela_menu{
                width: 100%;
                text-align: center;
                color: red;
                font-size: 16px;
                background-color: #00dd00;
            }
            footer{
                font-size: 10px;
                text-align: center;
                background-color: #008000;
            }
            .contato{
                color: #ffffff;
            }
        </style>
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
            </table>
        </header>
        <nav>
            <table id="tabela_menu">
                <tr>
                    <td class="menu">
                        <a href="index.html">Home</a>
                    </td>
                    <td class="menu">
                        <a href="exibeProdutos.jsp">Comprar</a>
                    </td>
                    <td class="menu">
                        <a href="cadastroUsuario.jsp">Cadastre-se</a>
                    </td>
                    <td class="menu">
                        <a href="">Nossa História</a>
                    </td>
                </tr>
            </table>
        </nav>
        <sql:setDataSource var="minhaBase" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/eloja" user="root" password=""/>
        <sql:update dataSource="${minhaBase}" var="resultado">
            INSERT INTO usuario VALUES ('<%= nome%>','<%= senha%>','COMUM');
        </sql:update>
        <p align="center">Usuário Cadastrado com sucesso!</p>
        <footer>
            <p><b>Por: </b>Equipenico - IFSP/Hto<br>
                <a href="http://ifsp.hto.edu.br">ENTRE EM CONTATO</a>
            </p>
        </footer>
    </body>
</html>
