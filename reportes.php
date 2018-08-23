<?php
	session_start();
	if (!isset($_SESSION['user_login_status']) AND $_SESSION['user_login_status'] != 1) {
        header("location: login.php");
		exit;
    }
	/* Connect To Database*/
	require_once ("config/db.php");//Contiene las variables de configuracion para conectar a la base de datos
	require_once ("config/conexion.php");//Contiene funcion que conecta a la base de datos

	$active_administracion = "";
	$active_ingresos = "";
	$active_egresos = "";
	$active_bodega = "";
	$active_reportes = "active";

	$title="Reportes | SGB";

?>

<!DOCTYPE html>
<html lang="en">
  <head>
	<?php include("head.php");?>
  </head>
  <body>
 	<?php
	include("navbar.php");
	?> 
    <div class="container">
		<div class="panel panel-info">
		<div class="panel-heading">
			<h4><i class='glyphicon glyphicon-paste'></i> Consulta de Reportes</h4>

		</div>

			<div class="panel-body">
			<form class="form-horizontal" role="form" style="margin-bottom: 25px;">
				<div class="form-group row">
					<label for="q" class="col-md-2 control-label">Seleccione:</label>
					<div class="col-md-4">
                        <select class="form-control" id="select_reporte">
					        <option value="">-- Selecciona tipo de reporte --</option>
					        <option value="cierre">Cierre de Caja</option>
					        <option value="detalle_prod">Venta Productos</option>
							<option value="kardex">Movimientos Kardex</option>
							<option value="stock">Stock de Productos</option>
							<option value="cxc">Cuentas Por Cobrar (CXC)</option>
							<option value="acc">Aperturas y Cierres de Caja</option>
							<option value="eli">Consumos Eliminados</option>
				        </select>
					</div>
				</div>							
				<div class="for-group row" id="form_stock">
					 <label for="tel2" class="col-md-2 control-label">Desde</label>
                     <div class="col-md-2">
                        <input type="date" class="form-control input-sm" id="fecha_ini">
                     </div>
					 <label for="tel2" class="col-md-1 control-label">Hasta</label>
                     <div class="col-md-2">
                        <input type="date" class="form-control input-sm" id="fecha_fin">
                     </div>
					 <label for="tel2" class="col-md-1 control-label estado_cxc">Estado</label>
					<div class="col-md-2 estado_cxc">
						<select class="form-control" id="select_estado_cxc">
							<option value="">-- Selecciona --</option>
							<option value="0">Pendientes Pago</option>
							<option value="1">Abonadas</option>
							<option value="2">Pagadas</option>
						</select>
					</div>
					<label for="tel2" class="col-md-1 control-label estado_acc">Estado</label>
					<div class="col-md-2 estado_acc">
						<select class="form-control" id="select_estado_acc">
							<option value="">-- Selecciona --</option>
							<option value="0">Abiertas</option>
							<option value="1">Cerradas</option>
							<option value="2">Depositadas</option>
						</select>
					</div>
				</div>
				<div class="btn-group pull-right">
						<button type="button" class="btn btn-success" data-toggle="modal" onclick="reportes(1)">
						<span class="glyphicon glyphicon-search"></span> Obtener Reporte
						</button>
                </div>
			</form>
				<div id="resultados"></div><!-- Carga los datos ajax -->
				<div class='outer_div'></div><!-- Carga los datos ajax -->
			</div>
		</div>
	</div>
	<hr>
	<?php
	include("footer.php");
	?>
	<script type="text/javascript" src="js/reportes.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<link rel="stylesheet" href="./css/print.min.css">
    <script src="./js/print.min.js"></script>
  </body>
</html>