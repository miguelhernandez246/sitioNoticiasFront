$(document).ready(function() {
    $('#logoutLink').click(function() {
         $.ajax({
             type: "GET",
             dataType: "json",
             url: "../login/cerrarSesion.jsp",
             success: function() {
                window.location='../index.jsp';
             },
             error:function() {
                console.log("Error al cerrar sesion");
             }
         });
     });
     
     $('#subirNota').click(function() {
         
         var idPersonal = $('#idPersonal').val();
         var titulo = $('#titulo').val();
         var contenido = $('#contenido').val();
         var guardar    = true;
         
         if(titulo === ''){
            guardar = false;
            alert('El Titulo no debe estar vacio');
        }
        
        if(contenido === ''){
            guardar = false;
            alert('El contenido no debe estar vacio');
        }
        
        if(guardar){
            
            $.ajax({
                type: "POST",
                contentType: 'application/json',
                dataType: 'json',
                url: "http://localhost:8347/noticias/",
                data: JSON.stringify({
                    persona:{idPersonal:idPersonal},
                    titulo:titulo,
                    contenido:contenido
                }),
                success: function(data) {
                    window.location='../index.jsp';
                },
                error:function(data) {
	            alert(data.responseJSON.mensaje);
                }
            });
        }
     });
});