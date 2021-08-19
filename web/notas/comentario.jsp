<%-- 
    Document   : comentario
    Created on : 19-ago-2021, 11:46:52
    Author     : miguel.hernandez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/include/functions2.jsp" %>
<%
    String usuario = checaNulo((String)session.getAttribute("usuario"));
    String idUsuario = checaNulo((String)session.getAttribute("idUsuario"));
    String idComentario = traeVariable(request, "idComentario");
    String idNota = traeVariable(request, "idNota");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../resource/css/bootstrap.css" rel="stylesheet">
        <script src="../resource/js/jquery.js"></script>
        <script src="js/comentario.js"></script>
        <title>Comentario</title>
    </head>
    <body style="background-image: url('../resource/images/fondo3.jpg'); background-repeat: no-repeat; background-size: cover">
        <input type="hidden" id="idComentario" name="idComentario" value="<%=idComentario%>">
        <input type="hidden" id="idNota" name="idNota" value="<%=idNota%>">
        <input type="hidden" id="idUsuario" name="idUsuario" value="<%=idUsuario%>">
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
            <button id="atrasBtn" name="atrasBtn" class="btn btn-danger">Atras</button>
            <br>
            <div id="contenedor" name="contenedor"></div>
        </div>
                            
        <div class="container px-4 py-5 mx-auto">
            <div class="card">
                <h3>Respuestas</h3>
                <br>
                <div class="form-group">
                    <textarea rows="3" name="respuesta" id="respuesta" style="width: 100%;" placeholder="Responder"></textarea>
                </div>
                <br>
                <button id="subirRespuesta" name="subirRespuesta" class="btn btn-primary" style="width: 10%;">Subir</button>
                <br>
                <div class="list-group" id="divRespuestas">
                    
                </div>       
            </div>
        </div>
    </body>
</html>
