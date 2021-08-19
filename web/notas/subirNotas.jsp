<%-- 
    Document   : subirNotas
    Created on : 19-ago-2021, 3:46:24
    Author     : miguel.hernandez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/include/functions2.jsp" %>
<%

    String usuario = checaNulo((String)session.getAttribute("usuario"));
    String idUsuario = checaNulo((String)session.getAttribute("idUsuario"));
    String tipo = checaNulo((String)session.getAttribute("tipo"));
    String idPersonal = checaNulo((String)session.getAttribute("idpersonal"));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notas</title>
        <link href="../resource/css/bootstrap.css" rel="stylesheet">
        <script src="../resource/js/jquery.js"></script>
        <script src="js/subirNotas.js"></script>
    </head>
    <body style="background-image: url('../resource/images/fondo3.jpg'); background-repeat: no-repeat; background-size: cover">
        <input type="hidden" id="idPersonal" name="idPersonal" value="<%=idPersonal%>">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-6 mb-lg-9">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="../index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a id="nombreUsuario" name="nombreUsuario" class="nav-link" ><%=usuario%></a>
                            </li>
                            <li class="nav-item">
                                <a id="logoutLink" name="logoutLink" class="nav-link" href="#">Salir</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        <div class="container px-4 py-5 mx-auto">
            <div class="card card1">
                <br>
                <center>
                    <div class="justify-content-center" style="width: 60%;">
                        <h1>Nueva Noticia</h1>
                        <br>
                        <div class="form-group">
                            <input type="text" class="form-control" id="titulo" aria-describedby="titulo" placeholder="Titulo">
                        </div>
                            <br>
                        <div class="form-group">
                            <textarea rows="20" name="contenido" id="contenido" style="width: 100%;" placeholder="Contenido de la noticia"></textarea>
                        </div>
                        <br>
                        <button id="subirNota" name="subirNota" class="btn btn-primary" style="width: 15%;">Subir</button>
                    </div>
                </center>
                <br><br><br><br><br>
            </div>
        </div>
    </body>
</html>
