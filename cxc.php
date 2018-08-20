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
	$active_ingresos = "active";
	$active_egresos = "";
	$active_bodega = "";
	$active_reportes = "";

	$title="CXC | SGB";

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

			<h4><i class='glyphicon glyphicon-search'></i> Buscar Por Cliente</h4>

		</div>

		<div class="panel-body">

		

			

			

			<?php

				include("modal/detalle_cxc.php");
				include("modal/abonar_cxc.php");

			?>

			<form class="form-horizontal" role="form" id="datos_cotizacion">

				

						<div class="form-group row">

							<label for="q" class="col-md-2 control-label">Cliente</label>

							<div class="col-md-5">

								<input type="text" class="form-control" id="q" placeholder="Cédula o nombre del Cliente" onkeyup='load(1);'>

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

	<script type="text/javascript" src="js/cxc.js"></script>

  </body>

</html>
