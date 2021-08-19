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
        <link href="resource/css/bootstrap.css" rel="stylesheet">
        <script src="resource/js/jquery.js"></script>
        <script src="js/index.js"></script>
        <title>Home</title>
    </head>
    <body style="background-image: url('resource/images/fondo3.jpg'); background-repeat: no-repeat; background-size: cover">
        <input type="hidden" id="usuario" name="usuario" value="<%=usuario%>">
        <input type="hidden" id="idUsuario" name="idUsuario" value="<%=idUsuario%>">
        <input type="hidden" id="tipo" name="tipo" value="<%=tipo%>">
        <input type="hidden" id="idPersonal" name="idPersonal" value="<%=idPersonal%>">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-6 mb-lg-9">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="#">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a id="loginLink" name="loginLink" class="nav-link" href="login/login.jsp">Login</a>
                            </li>
                            <li class="nav-item">
                                <a id="nombreUsuario" name="nombreUsuario" class="nav-link" ><%=usuario%></a>
                            </li>
                            <li class="nav-item">
                                <a id="logoutLink" name="logoutLink" class="nav-link" href="#">Salir</a>
                            </li>
                        </ul>
                        <div class="d-flex">
                            <button id="subirNota" name="subirNota" class="btn btn-outline-primary">Subir nota</button>
                        </div>
                    </div>
                </div>
            </nav>
        <div class="container">
            <img src="resource/images/diario.gif">
            <br><br><br><br>
            <div id="contenedor" name="contenedor"></div>
        </div>
    </body>
</html>
