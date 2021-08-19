$(document).ready(function() {
    
    
    $('#ingresarBtn').click(function() {
        
        var usuario 	= $('#usuario').val();
        var contra 	= $('#password').val();
        var consulta    = true;
        
        if(usuario === ''){
            consulta = false;
            alert('El usuario no debe estar vacio');
        }
        
        if(contra === ''){
            consulta = false;
            alert('La contraseña no debe estar vacio');
        }
        
        if(consulta){
            
            $.ajax({
	            type: "POST",
	            contentType: 'application/json',
                    dataType: 'json',
	            url: "http://localhost:8347/noticias/login",
	            data: JSON.stringify({
                        usuario:usuario,
                        contrasena:contra
                    }),
                    success: function(data) {
                        
                        $.ajax({
                            type: "GET",
                            dataType: "json",
                            url: "ingresoExitoso.jsp",
                            data: {
                                usuario:usuario,
                                idUsuario:data.usuario.idUsuario,
                                tipo:data.usuario.tipoUsuario,
                                idpersonal:data.personal.idPersonal
                            },
                            success: function() {
                                window.location='../index.jsp';
                            },
                            error:function() {
                                console.log("Error al guardar el id del usuario");
                            }
                            
                        });
                    },
                    error:function(data) {
	                alert(data.responseJSON.mensaje);
                    }
            });
            
        
        }
    });
    
});