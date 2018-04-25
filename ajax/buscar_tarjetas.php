<?php



	include('is_logged.php');//Archivo verifica que el usario que intenta acceder a la URL esta logueado

	/* Connect To Database*/

	require_once ("../config/db.php");//Contiene las variables de configuracion para conectar a la base de datos

	require_once ("../config/conexion.php");//Contiene funcion que conecta a la base de datos

	

	$action = (isset($_REQUEST['action'])&& $_REQUEST['action'] !=NULL)?$_REQUEST['action']:'';

	if (isset($_GET['id'])){

		$id_tarjetas=intval($_GET['id']);

		$query=mysqli_query($con, "SELECT * FROM `tarjetas` WHERE `id_tarjetas` = ".$id_tarjetas);

		$count=mysqli_num_rows($query);

		if ($count>0){

			if ($delete1=mysqli_query($con,"UPDATE `tarjetas` SET `estatus_tarjetas`= 3 WHERE `id_tarjetas` =".$id_tarjetas)){

			?>

			<div class="alert alert-success alert-dismissible" role="alert">

			  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>

			  <strong>Aviso!</strong> Tarjeta Cancelada exitosamente, sus fondos fueron suspendidos.

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

			  <strong>Error!</strong> No se pudo cancelar esta tarjeta

			</div>

			<?php

		}

		

		

		

	}

	if($action == 'ajax'){

		// escaping, additionally removing everything that could be (html/javascript-) code

        $q = mysqli_real_escape_string($con,(strip_tags($_REQUEST['q'], ENT_QUOTES)));

		include 'pagination.php'; //include pagination file

		//pagination variables

		$page = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;

		$per_page = 10; //how much records you want to show

		$adjacents  = 4; //gap between pages after number of adjacents

		$offset = ($page - 1) * $per_page;

		//Count the total number of row in your table*/

		$count_query   = mysqli_query($con, "SELECT COUNT(tar.`id_tarjetas`) as numrows, tar.`codigo_tarjetas`, tar.`cliente_id`, 
                            cli.`documento_cliente`, cli.`nombre_cliente`, cli.`telefono_cliente`, cli.`email_cliente`, 
                            tar.`monto_tarjetas`, tar.`fecha_solicitud_Tarjetas`, tar.`estatus_tarjetas`, est.`nombre_estatus` 
                            FROM `tarjetas` as tar 
                            JOIN `clientes` as cli ON (tar.`cliente_id` = cli.`id_cliente`) 
                            JOIN `estatus` as est ON (tar.`estatus_tarjetas` = est.`id_estatus`)
                            WHERE est.`nombre_estatus` != 'Cancelada' AND (cli.`documento_cliente` LIKE '%".$q."%'
                            OR cli.`nombre_cliente` LIKE '%".$q."%'
                            OR tar.`codigo_tarjetas` LIKE '%".$q."%')");

		$row= mysqli_fetch_array($count_query);

		$numrows = $row['numrows'];

		$total_pages = ceil($numrows/$per_page);

		$reload = './tarjetas.php';

		//main query to fetch the data

		$sql="SELECT tar.`id_tarjetas`, tar.`codigo_tarjetas`, tar.`cliente_id`, 
                cli.`documento_cliente`, cli.`nombre_cliente`, cli.`telefono_cliente`, cli.`email_cliente`, 
                tar.`monto_tarjetas`, tar.`fecha_solicitud_Tarjetas`, tar.`estatus_tarjetas`, est.`nombre_estatus` 
                FROM `tarjetas` as tar 
                JOIN `clientes` as cli ON (tar.`cliente_id` = cli.`id_cliente`) 
                JOIN `estatus` as est ON (tar.`estatus_tarjetas` = est.`id_estatus`)
                WHERE est.`nombre_estatus` != 'Cancelada' AND (cli.`documento_cliente` LIKE '%".$q."%'
                OR cli.`nombre_cliente` LIKE '%".$q."%'
                OR tar.`codigo_tarjetas` LIKE '%".$q."%')";

		$query = mysqli_query($con, $sql);

		//loop through fetched data

		if ($numrows>0){



			?>

			<div class="table-responsive">

			  <table class="table">

				<tr  class="info">

					<th>Cédula</th>

					<th>Nombre</th>

					<th>Teléfono</th>

					<th>Email</th>

                    <th>Código</th>

					<th>Fecha Solicitud</th>

					<th>Monto</th>

					<th>Estatus</th>

					<th class='text-right'>Acciones</th>

					

				</tr>

				<?php

				while ($row=mysqli_fetch_array($query)){

                        $id_tarjetas=$row['id_tarjetas'];
                        $codigo_tarjetas=$row['codigo_tarjetas'];
                        $cliente_id=$row['cliente_id'];
                        $documento_cliente=$row['documento_cliente'];
                        $nombre_cliente=$row['nombre_cliente'];
                        $telefono_cliente=$row['telefono_cliente'];
                        $email_cliente=$row['email_cliente'];
                        $monto_tarjetas=$row['monto_tarjetas'];
                        $fecha_solicitud_Tarjetas= date("d/m/Y", strtotime($row['fecha_solicitud_Tarjetas']));
                        $estatus_tarjetas=$row['estatus_tarjetas'];
                        $nombre_estatus=$row['nombre_estatus'];

                        if($nombre_estatus=='Activa'){
                            $label_class='label-success';
                        }else if($nombre_estatus=='Sin fondos'){
                            $label_class='label-warning';
                        }else if($nombre_estatus=='Anulada'){
                            $label_class='label-danger';
                        }

						

					?>

					<input type="hidden" value="<?php echo $id_tarjetas;?>" id="id_tarjetas<?php echo $id_tarjetas;?>">
					<input type="hidden" value="<?php echo $codigo_tarjetas;?>" id="id_tarjetas<?php echo $codigo_tarjetas;?>">
					<input type="hidden" value="<?php echo $cliente_id;?>" id="id_tarjetas<?php echo $cliente_id;?>">
					<input type="hidden" value="<?php echo $documento_cliente;?>" id="id_tarjetas<?php echo $documento_cliente;?>">
					<input type="hidden" value="<?php echo $nombre_cliente?>" id="id_tarjetas<?php echo $nombre_cliente?>">
					<input type="hidden" value="<?php echo $telefono_cliente?>" id="id_tarjetas<?php echo $telefono_cliente?>">
					<input type="hidden" value="<?php echo $email_cliente?>" id="id_tarjetas<?php echo $email_cliente?>">
					<input type="hidden" value="<?php echo $monto_tarjetas?>" id="id_tarjetas<?php echo $monto_tarjetas?>">
					<input type="hidden" value="<?php echo $fecha_solicitud_Tarjetas?>" id="id_tarjetas<?php echo $fecha_solicitud_Tarjetas?>">
					<input type="hidden" value="<?php echo $estatus_tarjetas?>" id="id_tarjetas<?php echo $estatus_tarjetas?>">
					<input type="hidden" value="<?php echo $nombre_estatus?>" id="id_tarjetas<?php echo $nombre_estatus?>">

					

					<tr>
						

						<td><?php echo $documento_cliente; ?></td>
						<td><?php echo $nombre_cliente; ?></td>
						<td><?php echo $telefono_cliente; ?></td>
						<td><?php echo $email_cliente; ?></td>
						<td><?php echo $codigo_tarjetas; ?></td>
						<td><?php echo $fecha_solicitud_Tarjetas; ?></td> 
						<td><?php echo $monto_tarjetas; ?></td>
						<td><span class="label <?php echo $label_class;?>"><?php echo $nombre_estatus; ?></span></td>

					    <td >
                            <span class="pull-right">

					            <a href="#" class='btn btn-default' title='Editar tarjeta' onclick="obtener_datos('<?php echo $id_cliente;?>');" data-toggle="modal" data-target="#myModal2">
                                    <i class="glyphicon glyphicon-edit"></i>
                                </a> 

					            <a href="#" class='btn btn-default' title='Cancelar tarjeta' onclick="eliminar('<?php echo $id_tarjetas; ?>')">
                                    <i class="glyphicon glyphicon-trash"></i> 
                                </a>
                            </span>
                        </td>

						

					</tr>

					<?php

				}

				?>

				<tr>

					<td colspan=9><span class="pull-right">

					<?php

					 echo paginate($reload, $page, $total_pages, $adjacents);

					?></span></td>

				</tr>

			  </table>

			</div>

			<?php

		}

	}

?>