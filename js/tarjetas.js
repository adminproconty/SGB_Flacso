$(document).ready(function(){
});

function load(page){
    var q= $("#q").val();
    $("#loader").fadeIn('slow');
    $.ajax({
        url:'./ajax/buscar_clientes.php?action=ajax&page='+page+'&q='+q,
         beforeSend: function(objeto){
         $('#loader').html('<img src="./img/ajax-loader.gif"> Cargando...');
      },
        success:function(data){
            $(".outer_div").html(data).fadeIn('slow');
            $('#loader').html('');
            
        }
    })
}



function eliminar (id) {
    var q= $("#q").val();
    if (confirm("Realmente deseas eliminar el cliente")){	
        $.ajax({
            type: "GET",
            url: "./ajax/buscar_clientes.php",
            data: "id="+id,"q":q,
            beforeSend: function(objeto){
                $("#resultados").html("Mensaje: Cargando...");
            },
            success: function(datos){
                $("#resultados").html(datos);
                load(1);
            }
        });
    }
}



$( "#guardar_cliente" ).submit(function( event ) {
    $('#guardar_datos').attr("disabled", true);

    var parametros = $(this).serialize();
    $.ajax({
        type: "POST",
        url: "ajax/nuevo_cliente.php",
        data: parametros,
        beforeSend: function(objeto){
            $("#resultados_ajax").html("Mensaje: Cargando...");
        },
        success: function(datos){
            $("#resultados_ajax").html(datos);
            $('#guardar_datos').attr("disabled", false);
            load(1);
        }
    });
    event.preventDefault();
})

$( "#editar_cliente" ).submit(function( event ) {
    $('#actualizar_datos').attr("disabled", true);

    var parametros = $(this).serialize();
    $.ajax({
        type: "POST",
        url: "ajax/editar_cliente.php",
        data: parametros,
        beforeSend: function(objeto){
            $("#resultados_ajax2").html("Mensaje: Cargando...");
        },
        success: function(datos){
            $("#resultados_ajax2").html(datos);
            $('#actualizar_datos').attr("disabled", false);
            load(1);
        }
    });
    event.preventDefault();
})

function generarCodigo(id) {
    $.ajax({
        type: "GET",
        url: "./ajax/generar_codigo_tarjeta.php",
        data: "id="+id,
        success: function(datos){
            alert('codigo ' + datos);
        }
    });
}

$(function() {
	$("#nombre_cliente").autocomplete({
        source: "./ajax/autocomplete/clientes.php",
        minLength: 2,
        select: function(event, ui) {
            event.preventDefault();
            $('#id_cliente').val(ui.item.id_cliente);
            $('#nombre_cliente').val(ui.item.nombre_cliente);
            $('#tel1').val(ui.item.telefono_cliente);
            $('#mail').val(ui.item.email_cliente);
            $('#saldo_cliente').val(ui.item.saldo_cliente);
            getClientes(1);
        }
    });
						
});	




