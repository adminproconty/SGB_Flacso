$(document).ready(function() {

    load(1);

});



function load(page) {

    var q = $("#q").val();
    $("#loader").fadeIn('slow');
    $.ajax({
        url: './ajax/buscar_cxc.php?action=ajax&page=' + page + '&q=' + q,
        beforeSend: function(objeto) {
            $('#loader').html('<img src="./img/ajax-loader.gif"> Cargando...');
        },
        success: function(data) {
            $(".outer_div").html(data).fadeIn('slow');
            $('#loader').html('');
        }
    })
}

function detalle_cxc(id_cliente) {
    $.ajax({
        url: './ajax/modal_detalle_cxc.php?id=' + id_cliente + '&detalle=1',
        beforeSend: function(objeto) {
            $('#loader').html('<img src="./img/ajax-loader.gif"> Cargando...');
        },
        success: function(data) {
            $(".resultados").html(data).fadeIn('slow');
            $('#loader').html('');
        }
    })
}

function modal_abonar(id_cliente) {
    $('#id_cliente').val(id_cliente);
    $.ajax({
        url: './ajax/modal_detalle_cxc.php?id=' + id_cliente + '&detalle=0',
        success: function(data) {
            var valor = data * 1;
            $("#monto").val(valor);
            $('#ttDeuda').val(valor);
        }
    })
}

function abonar() {
    var id_cliente = $('#id_cliente').val();
    var monto = $('#monto').val();
    var totalDeuda = $('#ttDeuda').val();
    if (monto <= totalDeuda) {
        $.ajax({
            url: './ajax/modal_detalle_cxc.php?id=' + id_cliente + '&monto=' + monto + '&detalle=0',
            success: function(data) {
                console.log('deudas', data);
                if (data == true) {
                    window.location.href = "cxc.php"
                    alert('¡Abono registrado exitosamente!');
                } else {
                    window.location.href = "cxc.php"
                    alert('¡Algo malo sucedió, intente de nuevo por favor, si persiste, comuníquese con el administrador del sistema!');
                }
            }
        })
    } else {
        alert('No puede abonar un monto mayor a $' + totalDeuda);
    }
}

function descargar(cliente_id) {
    window.open('./pdf/documentos/detalle_cxc_cliente.php?cliente=' + cliente_id, 'Detalle CXC', '', '1024', '768', 'true');
}