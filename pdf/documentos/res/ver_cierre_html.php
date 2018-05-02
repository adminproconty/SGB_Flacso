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
            <th style="width: 100%;text-align:center" class='midnight-blue'>DETALLE DE CAJA CHICA</th>
        </tr>
    </table>    

    <table cellspacing="0" style="width: 100%; text-align: left; font-size: 10pt;">
        <?php
        $vendedor = '';
        
        $sql=mysqli_query($con, "select usr.user_name, fac.condiciones, sum(fac.total_venta) as total_venta
        from facturas fac, users usr
        where usr.user_id = fac.id_vendedor
        GROUP by usr.user_name, fac.condiciones");



while ($row=mysqli_fetch_array($sql))

	{
        if ($vendedor != $row["user_name"] ){
            $vendedor=$row["user_name"];
        ?>
                <tr>
                <th class='clouds' style="width: 100%; text-align: left">Vendedor: <?php echo $vendedor; ?></th>
                </tr>
                
        <?php
        }

        if ($row["condiciones"] == 1){
            $ventas_efectivo=$row["total_venta"];
            $ventas_efectivo=number_format($ventas_efectivo,2);
        ?>
                <tr>
                <th class='silver' style="width: 100%; text-align: left">Efectivo: $<?php echo $ventas_efectivo; ?></th>
                </tr>
        <?php
        }
        
        if ($row["condiciones"] == 2){
            $ventas_transferencia=$row["total_venta"];
            $ventas_transferencia=number_format($ventas_transferencia,2);
        ?>
                <tr>
                <th class='silver' style="width: 30%; text-align: left">Transferencias: $<?php echo $ventas_transferencia; ?></th>
                
                </tr>
        <?php
        }

        if ($row["condiciones"] == 3){
            $ventas_tarjeta=$row["total_venta"];
            $ventas_tarjeta=number_format($ventas_tarjeta,2);
        ?>
                <tr>
                <th class='silver' style="width: 100%; text-align: left">Tarjetas Prep: $<?php echo $ventas_tarjeta; ?></th>
                </tr>
        <?php
        }

	}

    ?>


    </table>


	<br>
    <br>
    <br>
    <br>

	<div style="font-size:11pt;text-align:left;font-weight:bold">Jefe de Contrato</div>
    <div style="font-size:11pt;text-align:left;font-weight:bold">Recibe</div>


</page>



