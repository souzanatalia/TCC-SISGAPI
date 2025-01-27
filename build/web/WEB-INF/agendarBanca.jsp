<%-- 
    Document   : agendarBanca
    Created on : 14/09/2022, 13:42:38
    Author     : vinic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="utf-8">
        <title>Agendar banca</title>
        <link rel="stylesheet" type="text/css" href="./CSS/default.css">
        <link rel="stylesheet" type="text/css" href="./CSS/header.css">

        <script src="https://unpkg.com/phosphor-icons"></script>

        <style>
            body{
                font-family: Arial, Helvetica, sans-serif;

            }
            .box{
                color: black;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                background-color: white;
                border-radius: 15px;
                width: 30%;
            }
            fieldset{
                border: 3px solid black;
            }
            legend{
                border: 1px solid black;
                padding: 10px;
                text-align: center;
                border-radius: 8px;
            }
            .inputBox{
                position: relative;
            }
            .inputUser{
                background: none;
                border: none;
                border-bottom: 1px solid black;
                outline: none;
                color: black;
                font-size: 15px;
                width: 100%;
                letter-spacing: 2px;
            }
            .labelInput{
                position: absolute;
                top: 0px;
                left: 0px;
                pointer-events: none;
                transition: .5s;
            }
            .inputUser:focus ~ .labelInput,
            .inputUser:valid ~ .labelInput{
                top: -20px;
                font-size: 12px;
                color: dodgerblue;
            }
            #submit{
                background-image: linear-gradient(to right,rgb(0, 92, 197), rgb(90, 20, 220));
                width: 100%;
                border: none;
                padding: 15px;
                color: black;
                font-size: 15px;
                cursor: pointer;
                border-radius: 10px;
            }
            #submit:hover{
                color: orange;   /* enviar*/
            }
            select{
                margin-top: 20px;
                margin-bottom: 15px;
            }
            .radio{
                display: inline;
            }
        </style>
    </head>
    <body>
        <tags:headerAdm></tags:headerAdm>
            <div class="box">
                <legend><b>Agendar Banca</b></legend>
                <br><br>
                <div class="inputBox">
                    <form method="POST" action="AgendarBanca">
                        <label for="projeto">Projeto:</label>
                        <br>
                        <select name="projeto">
                        <c:forEach varStatus="status" var="projeto" items="${projetos}">
                            <option value="${projeto.id}">${projeto.nome}</option>
                        </c:forEach>
                    </select>  

                    <div class="inputBox">


                        <label for="imembros" class="labelInput">Membros da Banca:</label>
                        <select>
                            <option>Luis</option>
                            <option>Roberto</option>
                            <option>Alison</option>

                        </select>
                        <select>
                            <option>Luis</option>
                            <option>Roberto</option>
                            <option>Alison</option>

                        </select>
                        <select>
                            <option>Luis</option>
                            <option>Roberto</option>
                            <option>Alison</option>

                        </select>
                        <select>
                            <option>Luis</option>
                            <option>Roberto</option>
                            <option>Alison</option>

                        </select>
                        <select>
                            <option>Luis</option>
                            <option>Roberto</option>
                            <option>Alison</option>

                        </select>
                </form>       

                <form method="POST" action="AgendarBanca">
                    <label for="projeto">Projeto<br>
                        <select name="projeto">
                            <c:forEach varStatus="status" var="projeto" items="${projetos}">
                                <option value="${projeto.id}">${projeto.nome}</option>
                            </c:forEach>
                        </select>
                    </label>

            </div>
            <br>

            <input type="submit" name="submit" id="submit">
            </form>
        </div>
    </div>
</body>

<tags:footer></tags:footer>

</html>