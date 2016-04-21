<%-- 
    Project     : e-KipeNiko Shop
    Customer    : IFSP - DWE-I6
    P.O.        : Profº Mestre Leandro Camara Ledel
    Dev. Group  : Equipenico - Fábio Santos, Márcio Ricardo, Fernando Brito
    Document    : cadastroUsuario.jsp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            html, body{
                font-family: verdana
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
        <title>Cadastro e-KipeNiko Shop</title>
    </head>
    <body bgcolor="f0f0f0">
        <header>
            <table id="tabela_titulo">
                <tr>
                    <td id="coluna_titulo">
                        <label ><b>e-KipeNiko Shop</b></label>
                    </td>
                    <!--                     <td id="coluna_info_usuario">
                                            <label>DEV, INSERIR USER AQUI!!!</label>
                                        </td> -->
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
                        <!--Verificar se já existe usuario com mesmo login.-->    
                    </tr>
                    <tr>
                        <td>Senha: </td>
                        <td><input type="password" name="senha" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="reset" value="Limpar" />
                            <input type="submit" value="Cadastrar" />
                        </td>
                    </tr>

                </tbody>
            </table>
        </form>
        <footer>
            <p><b>Por: </b>Equipenico - IFSP/Hto<br>
                <a class="contato" href="http://ifsp.hto.edu.br"><b>ENTRE EM CONTATO</b></a>
            </p>
        </footer>
    </body>
</html>