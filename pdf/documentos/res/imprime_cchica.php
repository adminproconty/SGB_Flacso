<?php
	session_start();
    date_default_timezone_set('America/Bogota');
	if (!isset($_SESSION['user_login_status']) AND $_SESSION['user_login_status'] != 1) {
        header("location: ../login.php");
		exit;
    }
    /* Connect To Database*/
	include("../config/db.php");
	include("../config/conexion.php");
	//Archivo de funciones PHP
	include("../funciones.php");

	//Variables por GET
    $id_usuario=intval($_GET['id_usuario']);
    $sql_vendedor=mysqli_query($con,"select * from users where user_id = ".$_SESSION['user_id']." order by lastname");
    while ($rw=mysqli_fetch_array($sql_vendedor)){
        $nombre_vendedor=$rw["firstname"]." ".$rw["lastname"];
    
    }
	$total_compra=mysqli_real_escape_string($con,(strip_tags($_REQUEST['total'], ENT_QUOTES)));
    $session_id= session_id();
?>

<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <script type="text/javascript">
            function imprimir() {
                if (window.print) {
                    window.print();
                    window.location.href = "../caja_chica.php"
                } else {
                    alert("La función de impresion no esta soportada por su navegador.");
                }
            }
        </script>
    </head>
    <body onload="imprimir();">
        <table style="width: 100%;">
            <tr>
                <td>
                <FONT FACE="Arial" SIZE="1">Usuario: <?php echo $nombre_vendedor ?></FONT>
                </td>
            </tr>
            <tr>
                <td>
                <FONT FACE="Arial" SIZE="1">Fecha: <?php echo date("d/m/Y") ?></FONT>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
				<tr>
					<td>
						<FONT FACE="Arial" SIZE="1">--------------------------------------------------------</FONT>
					</td>
				</tr>
		</table>


        <table style="width: 100%;">
            <tr>
                <th style="width: 30%; text-align: left;">
                    <FONT FACE="Arial" SIZE="1">Cant</FONT>
                </th>
                <th style="width: 40%; text-align: left;">
                    <FONT FACE="Arial" SIZE="1">Prod.</FONT>
                </th>
                <th style="width: 30%; text-align: left;">
                    <FONT FACE="Arial" SIZE="1">Total</FONT>
                </th>
            </tr>
            
        <?php

            $sumador_total=0;
            $sql=mysqli_query($con, "SELECT * FROM `tmp_caja_chica` WHERE `sesion__tempcc` ='".$session_id."'");
            while ($row=mysqli_fetch_array($sql))
            {
                $producto=$row["producto__tempcc"];
                $cantidad=$row['cantidad__tempcc'];
                $precio_venta=$row['precio_unitario__tempcc'];
                $precio_venta_f=number_format($precio_venta,2);//Formateo variables
                $precio_venta_r=str_replace(",","",$precio_venta_f);//Reemplazo las comas
                $precio_total=$precio_venta_r*$cantidad;
                $precio_total_f=number_format($precio_total,2);//Precio total formateado
                $precio_total_r=str_replace(",","",$precio_total_f);//Reemplazo las comas
                $precio_total_r=number_format($precio_total_r,2);
                
                $sumador_total+=$precio_total_r;//Sumador
                
        ?>

                <tr>
                    <td style="width: 30%; text-align: left;">
                        <FONT FACE="Arial" SIZE="1"><?php echo $cantidad; ?></FONT>
                    </td>
                    <td style="width: 60%; text-align: left;">
                        <FONT FACE="Arial" SIZE="1"><?php echo $producto; ?></FONT>
                    </td>
                    <td style="width: 30%; text-align: left;">
                        <FONT FACE="Arial" SIZE="1"><?php echo $precio_total_r ?></FONT>
                    </td>

                </tr>

            <?php
            }
            ?>
        </table>
        <table style="width: 100%;">
            <tr>
                <td>
                    <FONT FACE="Arial" SIZE="1">--------------------------------------------------------</FONT>
                </td>
            </tr>
        </table>

        <table style="width: 100%;">

        <tr>

            <td style="width: 100%; text-align: right;">

            <FONT FACE="Arial" SIZE="1">Total: </strong> <?php echo $sumador_total ?></FONT>

            </td>

        </tr>

        </table>



        <table style="width: 100%;">
            <tr>
                <td style="width: 100%; text-align: center;">
                <FONT FACE="Arial" SIZE="1">¡¡Conserve este recibo!!</FONT>
                </td>
            </tr>
        </table>
    </body>

</html>




	