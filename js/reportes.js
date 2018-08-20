<<<<<<< HEAD
$(document).ready(function() {
    $("#form_stock").hide("slow");
    $('.estado_cxc').hide('slow');
    $('.estado_acc').hide('slow');
});

function reportes($id) {

    var tipo_reporte = document.getElementById("select_reporte").value;

    //alert ("tipo " + tipo_reporte);



    var desde = $('#fecha_ini').val();

    var hasta = $('#fecha_fin').val();



    var valida = localStorage.getItem('valida_fechas');



    if (valida == 'si') {

        if ($('#fecha_ini').val() == "") {

            alert('Ingrese Fecha Desde');

            return false;

        }

        if ($('#fecha_fin').val() == "") {

            alert('Ingrese Fecha Hasta');

            return false;

        }

    } else {

        var desde = '2018-01-01';

        var hasta = '3000-01-01';

    }



    if (tipo_reporte == "") {

        alert('Seleccione un Reporte');

        return false;

    } else if (tipo_reporte == "cierre") {

        window.open('./pdf/documentos/cierre_caja.php?fecha_ini=' + desde + '&fecha_fin=' + hasta, 'Factura', '', '1024', '768', 'true');

    } else if (tipo_reporte == "kardex") {

        window.open('./pdf/documentos/reporte_kardex.php?fecha_ini=' + desde + '&fecha_fin=' + hasta, 'Factura', '', '1024', '768', 'true');

    } else if (tipo_reporte == "detalle_prod") {

        window.open('./pdf/documentos/reporte_detalle_prod.php?fecha_ini=' + desde + '&fecha_fin=' + hasta, 'Factura', '', '1024', '768', 'true');

    } else if (tipo_reporte == "stock") {

        window.open('./pdf/documentos/reporte_stock.php?fecha_ini=' + desde + '&fecha_fin=' + hasta, 'Factura', '', '1024', '768', 'true');

    } else if (tipo_reporte == 'cxc') {

        var estado = $('#select_estado_cxc').val();
        if (estado == '') {
            estado = 'all';
        }
        desde = desde + ' 01:00:00';
        hasta = hasta + ' 23:59:59';
        window.open('./pdf/documentos/reporte_cxc.php?fecha_ini=' + desde + '&fecha_fin=' + hasta + "&estado=" + estado, 'Factura', '', '1024', '768', 'true');

    } else if (tipo_reporte == 'acc') {

        var estado = $('#select_estado_acc').val();
        if (estado == '') {
            estado = 'all';
        }
        desde = desde + ' 01:00:00';
        hasta = hasta + ' 23:59:59';
        window.open('./pdf/documentos/reporte_acc.php?fecha_ini=' + desde + '&fecha_fin=' + hasta + "&estado=" + estado, 'Factura', '', '1024', '768', 'true');

    }





}



$("#select_reporte").change(function() {



    $("select option:selected").each(function() {

        opcion = $(this).val();

        if (opcion == 'stock') {

            localStorage.setItem('valida_fechas', 'no');

            $("#form_stock").hide("slow");

            $('.estado_cxc').hide('slow');
            $('.estado_acc').hide('slow');

        } else if (opcion == 'cxc') {

            localStorage.setItem('valida_fechas', 'no');
            $("#form_stock").show("slow");
            $('.estado_cxc').show('slow');
            $('.estado_acc').hide('slow');

        } else if (opcion == 'acc') {
            localStorage.setItem('valida_fechas', 'no');
            $("#form_stock").show("slow");
            $('.estado_cxc').hide('slow');
            $('.estado_acc').show('slow');
        } else if (opcion == 'kardex' || opcion == 'detalle_prod' || opcion == 'cierre') {

            localStorage.setItem('valida_fechas', 'si');

            $("#form_stock").show("slow");
            $('.estado_cxc').hide('slow');
            $('.estado_acc').hide('slow');

        }

    });

=======
function reportes($id) {
    var tipo_reporte = document.getElementById("select_reporte").value;
    //alert ("tipo " + tipo_reporte);

    var desde = $('#fecha_ini').val();
    var hasta = $('#fecha_fin').val();
    
    var valida = localStorage.getItem('valida_fechas');

    if (valida == 'si'){
        if ($('#fecha_ini').val() == "") {
            alert('Ingrese Fecha Desde');
            return false;
        }
        if ($('#fecha_fin').val() == "") {
            alert('Ingrese Fecha Hasta');
            return false;
        } 
    } else {
        var desde = '2018-01-01';
        var hasta = '3000-01-01';
    }

    if (tipo_reporte == "") {
        alert('Seleccione un Reporte');
        return false;
    } else if (tipo_reporte == "cierre") {
        window.open('./pdf/documentos/cierre_caja.php?fecha_ini=' + desde + '&fecha_fin=' + hasta, 'Factura', '', '1024', '768', 'true');
    } else if (tipo_reporte == "kardex") {
        window.open('./pdf/documentos/reporte_kardex.php?fecha_ini=' + desde + '&fecha_fin=' + hasta, 'Factura', '', '1024', '768', 'true');
    }else if (tipo_reporte == "detalle_prod") {
        window.open('./pdf/documentos/reporte_detalle_prod.php?fecha_ini=' + desde + '&fecha_fin=' + hasta, 'Factura', '', '1024', '768', 'true');
    }else if (tipo_reporte == "stock") {
        window.open('./pdf/documentos/reporte_stock.php?fecha_ini=' + desde + '&fecha_fin=' + hasta, 'Factura', '', '1024', '768', 'true');
    }


}

$( "#select_reporte" ).change(function() {
    
    $( "select option:selected" ).each(function() {
        opcion = $( this ).val();
        if (opcion == 'stock'){
            localStorage.setItem('valida_fechas', 'no');
            $( "#form_stock" ).hide( "slow" );
        } else {
            localStorage.setItem('valida_fechas', 'si');
            $( "#form_stock" ).show( "slow" );
        }
    });    
>>>>>>> e42f1f6e4a9c79f42bf10042040de3109db5cb0e
});