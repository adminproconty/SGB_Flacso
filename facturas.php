<?php

	session_start();

	if (!isset($_SESSION['user_login_status']) AND $_SESSION['user_login_status'] != 1) {

        header("location: login.php");

		exit;

        }

	

	$active_administracion = "";
	$active_ingresos = "active";
	$active_egresos = "";
	$active_bodega = "";
	$active_reportes = "";
	$title="Consumos | SGB";



	include('ajax/is_logged.php');//Archivo verifica que el usario que intenta acceder a la URL esta logueado

	$session_id= session_id();

	/* Connect To Database*/

	require_once ("config/db.php");//Contiene las variables de configuracion para conectar a la base de datos

	require_once ("config/conexion.php");//Contiene funcion que conecta a la base de datos

	$delete=mysqli_query($con, "DELETE FROM tmp WHERE session_id='".$session_id."'");



	

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

		    <div class="btn-group pull-right">

				<a  href="nueva_factura.php" class="btn btn-info"><span class="glyphicon glyphicon-plus" ></span> Nuevo Consumo</a>

			</div>

			<h4><i class='glyphicon glyphicon-search'></i> Buscar Consumo</h4>

		</div>

			<div class="panel-body">

				<form class="form-horizontal" role="form" id="datos_cotizacion">

				

						<div class="form-group row">

							<label for="q" class="col-md-2 control-label">Cliente o # de Consumo</label>

							<div class="col-md-5">

								<input type="text" class="form-control" id="q" placeholder="Nombre del cliente o # de Consumo" onkeyup='load(1);'>

							</div>

							

							

							

							<div class="col-md-3">

								<button type="button" class="btn btn-default" onclick='load(1);' style="display: none;">

									<span class="glyphicon glyphicon-search" ></span> Buscar</button>

								<span id="loader"></span>

							</div>

							

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

	<script type="text/javascript" src="js/VentanaCentrada.js"></script>

	<script type="text/javascript" src="js/facturas.js"></script>

  </body>

</html>