$(document).ready(function() {
    
    $(document).ready(function() {
        
        var usuario = $('#usuario').val();
        var idUsuario = $('#idUsuario').val();
        var tipo = $('#tipo').val();
        var idPersonal = $('#idPersonal').val();
        var noticias = '';
        var comentar = true;
        
        if(idUsuario === ''){
            $('#loginLink').show();
            $('#logoutLink').hide();
            comentar = false;
        }else{
            $('#loginLink').hide();
            $('#logoutLink').show();
        }
        
        if(tipo === '1'){
            $('#subirNota').show();
        }else{
            $('#subirNota').hide();
        }
        
        $.ajax({
            type: "GET",
            contentType: 'application/json',
            dataType: 'json',
            url: "http://localhost:8347/noticias",
            success: function(data) {
                for(var i = 0; i < data.length; i++){
                    console.log(data[i].idNota);
                    var nombre =
                    noticias = imprimirNoticias(noticias,data[i].titulo,data[i].contenido,data[i].fecha,data[i].idNota,comentar);
                }
                
                $('#contenedor').append(noticias);
            },
            error:function(data) {
                alert('Error al consultar las noticias');
            }
        });
    });
    
     $('#logoutLink').click(function() {
         $.ajax({
             type: "GET",
             dataType: "json",
             url: "login/cerrarSesion.jsp",
             success: function() {
                window.location='index.jsp';
             },
             error:function() {
                console.log("Error al cerrar sesion");
             }
         });
     });
     
     $('#subirNota').click(function() {
         console.log("asdabsdbasdjhbas");
         window.location='notas/subirNotas.jsp';
     });
     
     function imprimirNoticias(objeto,titulo,contenido,fecha,id,comentar){
         var nota = '<div class="card">\n'+
                        '<div class="card-header">'+fecha+' </div>\n'+
                        '<div class="card-body">\n'+
                            '<h1 class="card-title">'+titulo+' </h1>\n'+
                            '<p class="card-text">'+contenido+'</p>\n';
                    if(comentar){
                        nota = nota+    '<a href="notas/nota.jsp?idNota='+id+'" class="btn btn-primary">Comentar</a>\n';
                    }
                    nota =  nota+   '</div></div><br>';
        
        return objeto+nota;
        
     }
});
