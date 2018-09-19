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
	$active_bodega = "active";
	$active_reportes = "";

	$title="Productos | SGB";

?>

<!DOCTYPE html>

<html lang="en">

  <head>

    <?php include("head.php");?>

  </head>

  <body>

	<nav class="navbar navbar-default ">
	<div class="container-fluid">
	<div class="navbar-header">
	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	<span class="sr-only">Toggle navigation</span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	</button>
	<a class="navbar-brand" href="#">::: SGB :::</a>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	<ul class="nav navbar-nav">
	<li class="<?php echo $active_administracion ?> dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<i  class='glyphicon glyphicon-cog'></i> 
					Administración 
				</a>
				<ul class="dropdown-menu">
					<li><a href="perfil.php">Configuración</a></li>
					<li><a href="usuarios.php">Usuarios</a></li>
				</ul>
			</li>

			<li class="<?php echo $active_facturas;?>">
				<a href="facturas.php">
					<i class='glyphicon glyphicon-list-alt'></i> Consumos <span class="sr-only">(current)</span>
				</a>
			</li>

			<li class="<?php echo $active_ingresos ?> dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<i class='glyphicon glyphicon-list-alt'></i>
					Ingresos 
				</a>
				<ul class="dropdown-menu">
					<li><a href="clientes.php">Clientes</a></li>
					<li><a href="tarjetas.php">Tarjetas</a></li>
					<li><a href="cxc.php">CXC</a></li>
				</ul>
			</li>

			<li class="<?php echo $active_egresos ?> dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">
				<i  class='glyphicon glyphicon-shopping-cart'></i>
				Egresos 
			</a>
			<ul class="dropdown-menu">
				<li><a href="caja_chica.php">Caja Chica</a></li>
			</ul>
			</li>

			<li class="<?php echo $active_bodega ?> dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<i class='glyphicon glyphicon-barcode'></i>
					Bodega 
				</a>
				<ul class="dropdown-menu">
					<li><a href="productos.php">Productos</a></li>
					<li><a href="kardex.php">Movimientos Kardex</a></li>
				</ul>
			</li>

			<li class="<?php echo $active_reportes ?>"><a href="reportes.php"><i  class='glyphicon glyphicon-paste'></i> Reportes</a></li>
			</ul>



<ul class="nav navbar-nav navbar-right">

  <li><a href="caja.php"><i class='glyphicon glyphicon-shopping-cart'></i> Caja</a></li>
  <li><a href="http://www.proconty.com" target='_blank'><i class='glyphicon glyphicon-envelope'></i> Soporte</a></li>        
  <li><a href="login.php?logout"><i class='glyphicon glyphicon-off'></i> Salir</a></li>



</ul>
</div><!-- /.navbar-collapse -->



  </div><!-- /.container-fluid -->



</nav>

	

    <div class="container">

	<div class="panel panel-info">

		<div class="panel-heading">

		    <div class="btn-group pull-right">

				<button type='button' class="btn btn-info" data-toggle="modal" data-target="#nuevoProducto"><span class="glyphicon glyphicon-plus" ></span> Nuevo Producto</button>

			</div>

			<h4><i class='glyphicon glyphicon-search'></i> Buscar Productos</h4>

		</div>

		<div class="panel-body">

		

			

			

			<?php

			include("modal/registro_productos.php");

			include("modal/editar_productos.php");

			?>

			<form class="form-horizontal" role="form" id="datos_cotizacion">

				

						<div class="form-group row">

							<label for="q" class="col-md-2 control-label">Código o nombre</label>

							<div class="col-md-5">

								<input type="text" class="form-control" id="q" placeholder="Código o nombre del producto" onkeyup='load(1);'>

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

	<script type="text/javascript" src="js/productos.js"></script>

  </body>

</html>

<script>

$( "#guardar_producto" ).submit(function( event ) {

  $('#guardar_datos').attr("disabled", true);

  

 var parametros = $(this).serialize();

	 $.ajax({

			type: "POST",

			url: "ajax/nuevo_producto.php",

			data: parametros,

			 beforeSend: function(objeto){

				$("#resultados_ajax_productos").html("Mensaje: Cargando...");

			  },

			success: function(datos){

			$("#resultados_ajax_productos").html(datos);

			$('#guardar_datos').attr("disabled", false);

			load(1);

		  }

	});

  event.preventDefault();

})



$( "#editar_producto" ).submit(function( event ) {

  $('#actualizar_datos').attr("disabled", true);

  

 var parametros = $(this).serialize();

	 $.ajax({

			type: "POST",

			url: "ajax/editar_producto.php",

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



	function obtener_datos(id){

			var codigo_producto = $("#codigo_producto"+id).val();

			var nombre_producto = $("#nombre_producto"+id).val();

			var id_categorias = $("#id_categorias"+id).val();

			var estado = $("#estado"+id).val();

			var precio_producto = $("#precio_producto"+id).val();

			var precio_flacso = $("#precio_flacso"+id).val();

			var precio_publico = $("#precio_publico"+id).val();

			

			$("#mod_id").val(id);

			$("#mod_codigo").val(codigo_producto);

			$("#mod_nombre").val(nombre_producto);

			$("#mod_categoria").val(id_categorias);

			$("#mod_precio").val(precio_producto);

			$("#mod_flacso").val(precio_flacso);

			$("#mod_publico").val(precio_publico);

			$("#mod_estado").val(estado);

		}

</script>