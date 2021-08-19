$(document).ready(function() {
    
    $(document).ready(function() {
        
        var idNota = $('#idNota').val();
        var noticia = '';
        var comentarios = '';
        
        $.ajax({
            type: "GET",
            contentType: 'application/json',
            dataType: 'json',
            url: "http://localhost:8347/noticias/nota",
            data:{
                idNota:idNota
            },
            success: function(data) {
                
                noticia = imprimirNoticias(noticia,data.persona.nombre,data.titulo,data.contenido,data.fecha,data.idNota);
                
                $('#contenedor').append(noticia);
                
                $.ajax({
                    type: "GET",
                    contentType: 'application/json',
                    dataType: 'json',
                    url: "http://localhost:8347/noticias/comentarios",
                    data:{
                        idNota:idNota
                    },
                    success: function(data) {
                        
                        for(var i = 0; i < data.length; i++){
                            comentarios = imprimirComentarios(
                                    comentarios,
                                    data[i].usuario.usuario,
                                    data[i].usuario.tipoUsuario,
                                    data[i].comentario,
                                    data[i].fecha,
                                    data[i].idComentario,
                                    idNota);
                        }
                        
                        $('#divComentarios').append(comentarios);
                    },
                    error:function(data) {}
                });
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
             url: "../login/cerrarSesion.jsp",
             success: function() {
                window.location='../index.jsp';
             },
             error:function() {
                console.log("Error al cerrar sesion");
             }
         });
     });
     
     $('#subirComentario').click(function() {
         var idNota = $('#idNota').val();
         var idUsuario = $('#idUsuario').val();
         var comentario = $('#comentario').val();
         var guardar = true;
         
         if(comentario === ''){
            guardar = false;
            alert('El comentario no debe estar vacio');
        }
         
         if(guardar){
             $.ajax({
                type: "POST",
                dataType: "json",
                contentType: 'application/json',
                url: "http://localhost:8347/noticias/comentario",
                data: JSON.stringify({
                   usuario:{idUsuario:idUsuario},
                   idNota:idNota,
                   comentario:comentario
                }),
                success: function() {
                   window.location='nota.jsp?idNota='+idNota;
                },
                error:function() {
                   alert('Error al subir el comentario');
                }
            });
         }
         
     });
    
    function imprimirNoticias(objeto,editor,titulo,contenido,fecha,id){
         var nota = '<div class="card">\n'+
                        '<div class="card-header">'+fecha+' </div>\n'+
                        '<div class="card-body">\n'+
                            '<h1 class="card-title">'+titulo+' </h1>\n'+
                            '<small class="text-muted">'+editor+'</small>'+
                            '<p class="card-text">'+contenido+'</p>\n'+
                        '</div></div>';
        
        return objeto+nota;
        
     }
     
     function imprimirComentarios(objeto,editor,tipo,contenido,fecha,id,idNota,idUsuario,idUsuarioActual){
         
         var tipoUsuario='Externo';
         
         if(tipo === 1){
             tipoUsuario = 'Interno';
         }
         
         var nota = '<div class="list-group">\n'+
                        '<a href="comentario.jsp?idComentario='+id+'&idNota='+idNota+'" class="list-group-item list-group-item-action" aria-current="true">\n'+
                        '<div class="d-flex w-100 justify-content-between">\n'+
                            '<small>by '+editor+'('+tipoUsuario+')</small>\n'+
                            '<small>'+fecha+'</small>'+
                        '</div>\n'+
                        '<p class="mb-1">'+contenido+'</p>'+
                        '</a></div>'
        
        return objeto+nota;
     }
});