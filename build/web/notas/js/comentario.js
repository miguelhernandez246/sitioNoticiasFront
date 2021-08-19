$(document).ready(function() {
    
    $(document).ready(function() {
        
        var idComentario = $('#idComentario').val();
        var idUsuario = $('#idUsuario').val();
        var idNota = $('#idNota').val();
        var comentario = '';
        var respuestas = '';
        
        $.ajax({
            type: "GET",
            contentType: 'application/json',
            dataType: 'json',
            url: "http://localhost:8347/noticias/comentario",
            data:{
                idComentario:idComentario
            },
            success: function(data) {
                comentario = imprimirComentario(comentario,data.usuario.usuario,data.usuario.tipoUsuario,data.comentario,data.fecha);
                
                $('#contenedor').append(comentario);
                
                $.ajax({
                    type: "GET",
                    contentType: 'application/json',
                    dataType: 'json',
                    url: "http://localhost:8347/noticias/respuestas",
                    data:{
                        idComentario:idComentario
                    },
                    success: function(data) {
                        
                        for(var i = 0; i < data.length; i++){
                            respuestas = imprimirRespuestas(
                                    respuestas,
                                    data[i].usuario.usuario,
                                    data[i].usuario.tipoUsuario,
                                    data[i].respuesta,
                                    data[i].fecha,
                                    data[i].usuario.idUsuario,
                                    idUsuario,
                                    data[i].idRespuesta,
                                    idComentario,
                                    idNota);
                        }
                        
                        $('#divRespuestas').append(respuestas);
                    },
                    error:function(data) {}
                });
            },
            error:function(data) {
                alert('Error al consultar las noticias');
            }
        });
    });
    
    $('#subirRespuesta').click(function() {
         var idComentario = $('#idComentario').val();
         var idUsuario = $('#idUsuario').val();
         var respuesta = $('#respuesta').val();
         var idNota = $('#idNota').val();
         var guardar = true;
         
         if(respuesta === ''){
            guardar = false;
            alert('La respuesta no debe estar vacia');
        }
         
         if(guardar){
             $.ajax({
                type: "POST",
                dataType: "json",
                contentType: 'application/json',
                url: "http://localhost:8347/noticias/respuesta",
                data: JSON.stringify({
                   usuario:{idUsuario:idUsuario},
                   idComentario:idComentario,
                   respuesta:respuesta
                }),
                success: function() {
                   window.location='comentario.jsp?idComentario='+idComentario+'&idNota='+idNota;
                },
                error:function() {
                   alert('Error al subir la respuesta');
                }
            });
         }
         
     });
     
     $('#logoutLink').click(function() {
         $.ajax({
             type: "GET",
             dataType: "json",
             url: "../login/cerrarSesion.jsp",
             success: function() {
                window.location='index.jsp';
             },
             error:function() {
                console.log("Error al cerrar sesion");
             }
         });
     });
     
     $('#atrasBtn').click(function() {
         var idNota = $('#idNota').val();
         window.location='nota.jsp?idNota='+idNota;
     });
    
    function imprimirComentario(objeto,editor,tipo,contenido,fecha){
        var tipoUsuario='Externo';
         
         if(tipo === 1){
             tipoUsuario = 'Interno';
         }
        
         var nota = '<div class="card">\n'+
                        '<div class="card-header">'+fecha+' </div>\n'+
                        '<div class="card-body">\n'+
                            '<small class="text-muted">'+editor+'('+tipoUsuario+')</small>'+
                            '<p class="card-text">'+contenido+'</p>\n'+
                            '</div></div>';
        return objeto+nota;
        
    }
    
    function imprimirRespuestas(objeto,editor,tipo,contenido,fecha,id,idActual,idRespuesta,idComentario,idNota){
         
         var tipoUsuario='Externo';
         
         if(tipo === 1){
             tipoUsuario = 'Interno';
         }
         
         var nota = '<div class="list-group">\n'+
                        '<a class="list-group-item list-group-item-action" aria-current="true">\n'+
                        '<div class="d-flex w-100 justify-content-between">\n'+
                            '<small>by '+editor+'('+tipoUsuario+')</small>\n'+
                            '<small>'+fecha+'</small>'+
                        '</div>\n'+
                        '<p class="mb-1">'+contenido+'</p>';
                                        
                    
        
        if(id === parseInt(idActual)){
            nota = nota+    '<small><button class="btn btn-danger" onClick="eliminar('+idRespuesta+',1,'+idComentario+','+idNota+')">Eliminar</button></small>';
        }
                   nota = nota+     '</a></div>';
        
        return objeto+nota;
     }
     
     
});
function eliminar(id,tipo,idComentario,idNota){
    $.ajax({
                type: "POST",
                dataType: "json",
                contentType: 'application/json',
                url: "http://localhost:8347/noticias/borrar",
                data: JSON.stringify({
                   id:id,
                   tipo:tipo
                }),
                success: function() {
                   window.location='comentario.jsp?idComentario='+idComentario+'&idNota='+idNota;
                },
                error:function() {
                   alert('Error al borrar comentario');
                }
            });
}