<?php



	//session_start();

	/*if (!isset($_SESSION['user_login_status']) AND $_SESSION['user_login_status'] != 1) {

        header("location: login.php");

		exit;

        }*/

	

	/* Connect To Database*/

	require_once ("config/db.php");//Contiene las variables de configuracion para conectar a la base de datos

	require_once ("config/conexion.php");//Contiene funcion que conecta a la base de datos

	

	$active_administracion = "";
	$active_ingresos = "";
	$active_egresos = "";
	$active_bodega = "";
	$active_reportes = "";
	$title="Caja | SGB";
	$usuario = $_COOKIE['user_id'];
	

?>

<!DOCTYPE html>

<html lang="en">

  <head>

    <?php include("head.php");?>

  </head>

  <body>

	<?php

    include("navbar.php");
	include("modal/apertura_caja.php");
	include("modal/cierre_caja.php");
	include("modal/depositar_caja.php");
    if ($_COOKIE['user_perfil']== 'Administrador') {
	?>
	


    <div class="container">
		<div class="panel panel-info">
			<div class="panel-heading">
				<h4><i class='glyphicon glyphicon-shopping-cart'></i> Aperturas y Cierres de Caja</h4>
			</div>
			<div class="panel-body">
				<div id="resultados"></div><!-- Carga los datos ajax -->
				<div class='outer_div'></div><!-- Carga los datos ajax -->
			</div>
		</div>
	</div>

    <?php

    } else {

    ?>

        <div class="container">
            <div class="panel panel-info">  
                <div class="panel-heading">
					<div class="btn-group pull-right">
						<button type='button' class="btn btn-info" id="openCaja" data-toggle="modal" data-target="#aperturaCaja" onclick="abrir_caja('<?php echo $usuario ?>')">
							<span class="glyphicon glyphicon-plus" ></span> 
							Apertura de Caja
						</button>
					</div>
                    <h4><i class='glyphicon glyphicon-shopping-cart'></i> Apertura y Cierre de Caja</h4>
                </div>
                <div class="panel-body">
				    <div id="resultados"></div><!-- Carga los datos ajax -->
				    <div class='outer_div'></div><!-- Carga los datos ajax -->
                </div>
            </div>
        </div>

    <?php

    }

    ?>

	<hr>

	<?php

	include("footer.php");

	?>

	<script type="text/javascript" src="js/caja.js"></script>

  </body>

</html>

