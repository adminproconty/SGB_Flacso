$(document).ready(function() {
    var tipoUsuario = localStorage.getItem('tipoUsuario');
    if (tipoUsuario == "Ventas") {
        load(localStorage.getItem('user'));
    } else {
        init();
    }
});

function load(usuario) {
    cajaAbierta(usuario);
    $.ajax({
        url: './ajax/buscar_caja_usuario.php?page=1&usuario=' + usuario,
        beforeSend: function(objeto) {
            $('#loader').html('<img src="./img/ajax-loader.gif"> Cargando...');
        },
        success: function(data) {
            $(".outer_div").html(data).fadeIn('slow');
            $('#loader').html('');
        }
    })
}

function init() {
    $.ajax({
        url: './ajax/buscar_apertura_cierre_caja.php',
        beforeSend: function(objeto) {
            $('#loader').html('<img src="./img/ajax-loader.gif"> Cargando...');
        },
        success: function(data) {
            $(".outer_div").html(data).fadeIn('slow');
            $('#loader').html('');
        }
    })
}

function abrir_caja(id_usuario) {
    $('#id_usuario').val(id_usuario);
}

function cajaAbierta(usuario) {
    $.ajax({
        url: './ajax/buscar_caja_abierta_usuario.php?usuario=' + usuario,
        success: function(data) {
            if (data == true) {
                $('#openCaja').hide('slow');
            } else {
                $('#openCaja').show('slow');
            }
        }
    })
}

function abrirCaja() {
    var usuario = $('#id_usuario').val();
    var monto = $('#monto').val();
    if (monto == '') {
        alert('Debe indicar la cantidad de dinero inicial en caja');
    } else {
        $.ajax({
            url: './ajax/abrir_caja.php?usuario=' + usuario + '&monto=' + monto,
            success: function(data) {
                if (data == true) {
                    $('#aperturaCaja').modal('hide');
                    alert('Caja abierta exitosamente');
                } else {
                    alert('Algo sucedió mal, por favor reintente, si sucede de nuevo, comuníquese con el administrador del sistema');
                }
            }
        })
    }
}

function cerrar_caja(id_acc) {
    $('#tablaCierre tbody').html('');
    $.ajax({
        url: './ajax/buscar_cierre_caja_usuario.php?id=' + id_acc,
        success: function(data) {
            var info = JSON.parse(data);
            $('#tablaCierre tbody').append(
                '<tr>' +
                '<td class="danger" width="20%">' +
                'Compras' +
                '</td>' +
                '<td>-$' +
                info.compras +
                '</td>' +
                '</tr>' +
                '<tr>' +
                '<td class="success" width="20%">' +
                'Efectivo' +
                '</td>' +
                '<td>$' +
                info.efectivo +
                '</td>' +
                '</tr>' +
                '<tr>' +
                '<td class="success" width="20%">' +
                'Tarjetas' +
                '</td>' +
                '<td>$' +
                info.tarjeta +
                '</td>' +
                '</tr>' +
                '<tr>' +
                '<td class="success" width="20%">' +
                'Transferencias' +
                '</td>' +
                '<td>$' +
                info.transferencias +
                '</td>' +
                '</tr>' +
                '<tr>' +
                '<td class="success" width="20%">' +
                'CXC Pagadas' +
                '</td>' +
                '<td>$' +
                info.abonos +
                '</td>' +
                '</tr>' +
                '<tr>' +
                '<td class="warning" width="20%">' +
                'Total Caja' +
                '</td>' +
                '<td>$' +
                info.total +
                '</td>' +
                '</tr>'
            );
            $('#totalCierre').val(info.total);
            $('#idAcc').val(id_acc);
        }
    });
}

function cerrarCaja() {
    var idAcc = $('#idAcc').val();
    var monto = $('#totalCierre').val();
    $.ajax({
        url: './ajax/cerrar_caja.php?id=' + idAcc + '&monto=' + monto,
        success: function(data) {
            if (data == true) {
                $('#cierreCaja').modal('hide');
                alert('Caja cerrada exitosamente');
            } else {
                alert('Algo sucedió mal, por favor reintente, si sucede de nuevo, comuníquese con el administrador del sistema');
            }
            var tipoUsuario = localStorage.getItem('tipoUsuario');
            if (tipoUsuario == "Ventas") {
                load(localStorage.getItem('user'));
            }
        }
    })
}

function depositar_caja(id_acc) {
    $('#id_acc').val(id_acc);
    $.ajax({
        url: './ajax/consultar_depositar.php?id=' + id_acc,
        success: function(data) {
            console.log('total depositar', data);
            $('#monto_depositar').val(data);
        }
    });
}

function registrarDeposito() {
    var id_acc = $('#id_acc').val();
    var banco = $('#banco').val();
    var cuenta = $('#cuenta').val();
    var referencia = $('#referencia').val();
    var monto = $('#monto_depositar').val();
    $.ajax({
        url: './ajax/depositar_caja.php?id_acc=' + id_acc + "&banco=" + banco + "&cuenta=" + cuenta + "&referencia=" + referencia + "&monto=" + monto,
        success: function(data) {
            $('#depositarCaja').modal('hide');
            if (data == true) {
                alert('Algo sucedió mal, por favor reintente, si sucede de nuevo, comuníquese con el administrador del sistema');
            } else {
                alert('Depósito registrado exitosamente');
            }
            var tipoUsuario = localStorage.getItem('tipoUsuario');
            if (tipoUsuario == "Ventas") {
                load(localStorage.getItem('user'));
            }
        }
    });
}