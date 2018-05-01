<?php



	session_start();

	if (!isset($_SESSION['user_login_status']) AND $_SESSION['user_login_status'] != 1) {

        header("location: ../../login.php");

		exit;

    }

	

	

	/* Connect To Database*/

	include("../../config/db.php");

	include("../../config/conexion.php");

	//Archivo de funciones PHP

	include("../../funciones.php");

	$session_id= session_id();

	$sql_count=mysqli_query($con,"select * from tmp where session_id='".$session_id."'");

	$count=mysqli_num_rows($sql_count);

	if ($count==0)

	{

	echo "<script>alert('No hay productos agregados a la factura')</script>";

	echo "<script>window.close();</script>";

	exit;

	} else {
		
	  	echo "<script>alert('Consumo Generado con Éxito!!!')</script>";	

	}



	require_once(dirname(__FILE__).'/../html2pdf.class.php');

		

	//Variables por GET

	$id_cliente=intval($_GET['id_cliente']);

	$id_vendedor=intval($_GET['id_vendedor']);

	$condiciones=mysqli_real_escape_string($con,(strip_tags($_REQUEST['condiciones'], ENT_QUOTES)));

	$total_compra=mysqli_real_escape_string($con,(strip_tags($_REQUEST['gastos_producto'], ENT_QUOTES)));



	//Fin de variables por GET

	$sql=mysqli_query($con, "select LAST_INSERT_ID(numero_factura) as last from facturas order by id_factura desc limit 0,1 ");

	$rw=mysqli_fetch_array($sql);

	$numero_factura=$rw['last']+1;	

	$simbolo_moneda=get_row('perfil','moneda', 'id_perfil', 1);

    // get the HTML

     ob_start();

     include(dirname('__FILE__').'/res/factura_html.php');

    $content = ob_get_clean();



	

	echo '<script>window.location.href = "../../nueva_factura.php";</script>';

	

	//exit;

    



	