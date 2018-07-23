<?php







	include('is_logged.php');//Archivo verifica que el usario que intenta acceder a la URL esta logueado



	/* Connect To Database*/



	require_once ("../config/db.php");//Contiene las variables de configuracion para conectar a la base de datos



	require_once ("../config/conexion.php");//Contiene funcion que conecta a la base de datos



	function getTarjetas($idcliente, $con){



		$sql="SELECT `monto_tarjetas` FROM `tarjetas` WHERE `cliente_id` = ".$idcliente;



		$query = mysqli_query($con, $sql);



		$count=mysqli_num_rows($query);



		if($count > 0) {

			$saldo = 0;

			while($row=mysqli_fetch_array($query)){

				$saldo = $saldo + $row['monto_tarjetas'];

			}

			return $saldo;

		}else{

			return 0.00;

		}

	}



	$action = (isset($_REQUEST['action'])&& $_REQUEST['action'] !=NULL)?$_REQUEST['action']:'';



	if (isset($_GET['id'])){



		$id_cliente=intval($_GET['id']);



		$query=mysqli_query($con, "select * from facturas where id_cliente='".$id_cliente."'");



		$count=mysqli_num_rows($query);



		if ($count==0){



			if ($delete1=mysqli_query($con,"DELETE FROM clientes WHERE id_cliente='".$id_cliente."'")){



			?>



			<div class="alert alert-success alert-dismissible" role="alert">



			  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>



			  <strong>Aviso!</strong> Datos eliminados exitosamente.



			</div>



			<?php 



		}else {



			?>



			<div class="alert alert-danger alert-dismissible" role="alert">



			  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>



			  <strong>Error!</strong> Lo siento algo ha salido mal intenta nuevamente.



			</div>



			<?php



			



		}



			



		} else {



			?>



			<div class="alert alert-danger alert-dismissible" role="alert">



			  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>



			  <strong>Error!</strong> No se pudo eliminar éste  cliente. Existen facturas vinculadas a éste producto. 



			</div>



			<?php



		}



		



		



		



	}



	if($action == 'ajax'){



		// escaping, additionally removing everything that could be (html/javascript-) code



        $q = mysqli_real_escape_string($con,(strip_tags($_REQUEST['q'], ENT_QUOTES)));

        $sql = "SELECT SUM(fac.`total_venta`) as deuda, cli.`id_cliente`, cli.`nombre_cliente`, cli.`documento_cliente`, 
					cxc.`estado_cxc`
					FROM `facturas` as fac 
					JOIN `clientes` as cli ON (fac.`id_cliente` = cli.`id_cliente`)
					JOIN `cxc` as cxc ON (fac.`id_factura` = cxc.`factura_id`)
					WHERE (fac.`condiciones` = 4 AND fac.`estado_factura` = 1)
					AND (cxc.estado_cxc = 0 OR cxc.estado_cxc = 1)
					AND (cli.`nombre_cliente` like '%".$q."%' OR cli.`documento_cliente` like '%".$q."%')
					GROUP BY fac.`id_cliente`";


		include 'pagination.php'; //include pagination file
		//pagination variables
		$page = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;
		$per_page = 10; //how much records you want to show
		$adjacents  = 4; //gap between pages after number of adjacents
		$offset = ($page - 1) * $per_page;
		//Count the total number of row in your table*/
		$query   = mysqli_query($con, $sql);
		$numrows= mysqli_num_rows($query);
		$total_pages = ceil($numrows/$per_page);
		$reload = './cxc.php';
		//loop through fetched data
		if ($numrows>0){

			?>



			<div class="table-responsive">



			  <table class="table">



				<tr  class="info">



					<th>Cédula</th>
					<th>Nombre</th>
					<th>Deuda</th>
					<th>Estado</th>
					<th class='text-right'>Acciones</th>	

				</tr>



				<?php



				while ($row=mysqli_fetch_array($query)){


						$cedula=$row['documento_cliente'];
						$nombre = $row['nombre_cliente'];
						$deuda = $row['deuda'];
						$id_cliente = $row['id_cliente'];
						$estado = $row['estado_cxc'];
						if ($estado==0) {
							$estado="Pendiente Pago";$label_class='label-danger';
						} else if ($estado == 1) {
							$estado="Abonado";$label_class='label-warning';
							$deuda = restar($con, $id_cliente);
						} else if ($estado == 2) {
							$estado="Pagado";$label_class='label-success';
						}

					?>


					<tr>


						<td><?php echo $cedula; ?></td>
						<td><?php echo $nombre; ?></td>
						<td>$<?php echo $deuda;?></td>
						<td><span class="label <?php echo $label_class;?>"><?php echo $estado; ?></span></td>
						<td ><span class="pull-right">
						<?php
							if ($_SESSION['user_perfil'] == 'Administrador') {
						?>
							<a href="#" class='btn btn-default' title='Descargar' onclick="descargar('<?php echo $id_cliente;?>');" >
								<i class="glyphicon glyphicon-download"></i>
							</a> 
						<?php
							}
						?>
							<a href="#" class='btn btn-default' title='Detalles' onclick="detalle_cxc('<?php echo $id_cliente;?>');" data-toggle="modal" data-target="#modDetalle_CXC">
								<i class="glyphicon glyphicon-eye-open"></i>
							</a> 
							<a href="#" class='btn btn-default' title='Abonar' onclick="modal_abonar('<?php echo $id_cliente; ?>')" data-toggle="modal" data-target="#modAbonarCXC">
								<i class="glyphicon glyphicon-credit-card"></i> 
							</a>
						</span></td>



						



					</tr>



					<?php



				}



				?>



				<tr>



					<td colspan=8><span class="pull-right">



					<?php



					 echo paginate($reload, $page, $total_pages, $adjacents);



					?></span></td>



				</tr>



			  </table>



			</div>



			<?php



		}



	}

	function restar($conexion, $cliente) {
		$deudaTotal = 0;
		$sqlFacturasPendientePago = "SELECT cxc.factura_id, fac.`total_venta`
									FROM `cxc` as cxc
									JOIN `facturas` as fac ON (cxc.factura_id = fac.`id_factura`)
									WHERE cxc.estado_cxc = 0 
									AND `id_cliente` = ".$cliente;
		$query = mysqli_query($conexion, $sqlFacturasPendientePago);
		while ($row = mysqli_fetch_array($query)) {
			$deudaTotal = $deudaTotal + $row['total_venta'];
		}
		$sqlFacturasAbonadas = "SELECT cxc.factura_id, fac.`total_venta`, cxc.`id_cxc`
									FROM `cxc` as cxc
									JOIN `facturas` as fac ON (cxc.factura_id = fac.`id_factura`)
									WHERE cxc.estado_cxc = 1
									AND `id_cliente` = ".$cliente;
		$query = mysqli_query($conexion, $sqlFacturasAbonadas);
		while($row = mysqli_fetch_array($query)) {
			$deudaTotal = $deudaTotal + descontar($conexion, $row['id_cxc'], $row['total_venta']);
		}
		return $deudaTotal;
		
	}

	function descontar($conexion, $cuenta_cobrar, $total) {
		$sql = "SELECT `monto_abonos` FROM `abonos` WHERE `cxc_id` = ".$cuenta_cobrar;
		$query = mysqli_query($conexion, $sql);
		if ($row = mysqli_fetch_array($query)) {
			$deuda = $total - $row['monto_abonos'];
			return $deuda;
		} else {
			return 0;
		}
	}



?>