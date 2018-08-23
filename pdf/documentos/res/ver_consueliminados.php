<style type="text/css">
<!--
table { vertical-align: top; }
tr    { vertical-align: top; }
td    { vertical-align: top; }
.midnight-blue{
	background:#2c3e50;
	padding: 4px 4px 4px;
	color:white;
	font-weight:bold;
	font-size:12px;
}

.silver{
	background:white;
	padding: 3px 60px 3px;
}

.clouds{
	background:#ecf0f1;
	padding: 3px 4px 3px;
}

.border-top{
	border-top: solid 1px #bdc3c7;
}

.border-left{
	border-left: solid 1px #bdc3c7;
}

.border-right{
	border-right: solid 1px #bdc3c7;
}

.border-bottom{
	border-bottom: solid 1px #bdc3c7;
}

table.page_footer {width: 100%; border: none; background-color: white; padding: 2mm;border-collapse:collapse; border: none;}
}
-->
</style>
<page backtop="15mm" backbottom="15mm" backleft="15mm" backright="15mm" style="font-size: 12pt; font-family: arial" >
        <page_footer>
        <table class="page_footer">
            <tr>
                <td style="width: 50%; text-align: left">
                    P&aacute;gina [[page_cu]]/[[page_nb]]
                </td>
                <td style="width: 50%; text-align: right">
                    &copy; <?php echo "www.proconty.com | "; echo  $anio=date('Y'); ?>
                </td>
            </tr>
        </table>
    </page_footer>
	<?php include("encabezado_factura.php");?>
    <br>
   
    <table cellspacing="0" style="width: 100%; text-align: left; font-size: 10pt;">
        <tr>
            <th style="width: 100%;text-align:center" class='midnight-blue'>REPORTE CONSUMOS ELIMINADOS</th>
        </tr>
        <tr>
            <th style="width: 100%;text-align:left" class='silver'>DESDE: <?php echo $fecha_ini; ?></th>
        </tr>
        <tr>
            <th style="width: 100%;text-align:left" class='silver'>HASTA: <?php echo $fecha_fin; ?></th>
        </tr>
    </table>    

    <table cellspacing="0" style="width: 100%; text-align: left; font-size: 8pt;">
        <?php
        $vendedor = '';
        
        $sql=mysqli_query($con, "select * from log_borrado, products, users
                                where log_borrado.id_producto = products.id_producto
                                and log_borrado.usuario = users.user_id
                                and log_borrado.fecha_borrado >= '".$fecha_ini." 00:00:00'
                                and log_borrado.fecha_borrado <= '".$fecha_fin." 23:59:59'
                                order by log_borrado.fecha_borrado");
    
    ?>

        <tr>
            <th class='clouds' style="text-align: center">Fec.Eliminado</th>
            <th class='clouds' style=" text-align: center">Num.Factura</th>
            <th class='clouds' style="text-align: center">Fec.Factura</th>
            <th class='clouds' style=" text-align: center">Producto</th>
            <th class='clouds' style=" text-align: center">Cantidad</th>
            <th class='clouds' style=" text-align: center">Precio</th>
            <th class='clouds' style=" text-align: center">Usuario</th>
        </tr>
    <?php
    while ($row=mysqli_fetch_array($sql))
	{
    ?>
        <tr>
            <td class='gold' style="width: 15%; text-align: center"><?php echo $row['fecha_borrado'];?></td>
            <td class='gold' style="width: 15%; text-align: center"><?php echo $row['numero_factura'];?></td>
            <td class='gold' style="width: 15%; text-align: center"><?php echo $row['fecha_factura'];?></td>
            <td class='gold' style="width: 25%; text-align: center"><?php echo $row['nombre_producto'];?></td>
            <td class='gold' style="width: 10%; text-align: center"><?php echo $row['cantidad'];?></td>
            <td class='gold' style="width: 10%; text-align: center"><?php echo $row['precio_venta'];?></td>
            <td class='gold' style="width: 15%; text-align: center"><?php echo $row['user_name'];?></td>
        </tr>
    <?php
	}
    ?>
    </table>
	<br>
    <br>
    <br>
    <br>
    <table cellspacing="0" style="width: 100%; text-align: left; font-size: 10pt;">
        <tr>
            <th class='silver' style="width: 50%; text-align: left; font-size:11pt">Jefe de Contrato</th>
            <th class='silver' style="width: 40%; text-align: right; font-size:11pt">Recibe</th>
        </tr>
    </table>


</page>