function reportes($id) {
    var tipo_reporte = document.getElementById("select_reporte").value;
    //alert ("tipo " + tipo_reporte);
    
    if (tipo_reporte == "") {
        alert('Seleccione un Reporte');
        return false;
    }
    
    if ($('#fecha_ini').val() == "") {
        alert('Ingrese Fecha Desde');
        return false;
    }
    if ($('#fecha_fin').val() == "") {
        alert('Ingrese Fecha Hasta');
        return false;
    }

    var desde = $('#fecha_ini').val();
    var hasta = $('#fecha_fin').val();

    window.open('./pdf/documentos/cierre_caja.php?fecha_ini='+desde+'&fecha_fin='+hasta,'Factura','','1024','768','true');
}


