<%-- 
    Document   : login
    Created on : 18-ago-2021, 16:55:29
    Author     : miguel.hernandez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="../resource/css/bootstrap.css" rel="stylesheet">
        <script src="../resource/js/jquery.js"></script>
        <script src="js/login.js"></script>
    </head>
    <body style="background-image: url('../resource/images/fondo3.jpg'); background-repeat: no-repeat; background-size: cover" >
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-6 mb-lg-9">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="../index.jsp">Inicio</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        <div class="container px-4 py-5 mx-auto">
            <div class="row justify-content-center">
                <div class="d-flex flex-lg-row flex-column-reverse ">
                    <div class="card card1">
                        <div class="row justify-content-center my-auto">
                            <div class="col-md-7 col-10 my-3">
                                <div class="row justify-content-center px-2 mb-2"> <img id="logo" src="../resource/images/login.png"> </div>
                                <h3 class="mb-5 text-center heading">Bienvenido!</h3>
                                <h6 class="msg-info">Por favor ingresa tu usuario y tu contraseña</h6>
                                <div class="form-group"> <label class="form-control-label text-muted">Usuario</label> <input type="text" id="usuario" name="usuario" placeholder="Usuario" class="form-control"> </div>
                                <div class="form-group"> <label class="form-control-label text-muted">Contraseña</label> <input type="password" id="password" name="password" placeholder="Contraseña" class="form-control"> </div>
                                <div class="row justify-content-center my-3 px-3"> <button class="btn btn-primary" id="ingresarBtn" name="ingresarBtn">Ingresar</button> </div>
                                
                            </div>
                        </div>
          
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
