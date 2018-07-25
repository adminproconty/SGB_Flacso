	<?php



		if (isset($title))



		{



	



			$user_id = $_SESSION['user_id'];



			$query_usuario=mysqli_query($con,"select * from users where user_id='".$user_id."'");



			$row2=mysqli_fetch_array($query_usuario);		







	?>



<nav class="navbar navbar-default ">



  <div class="container-fluid">



    <!-- Brand and toggle get grouped for better mobile display -->



    <div class="navbar-header">



      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">



        <span class="sr-only">Toggle navigation</span>



        <span class="icon-bar"></span>



        <span class="icon-bar"></span>



        <span class="icon-bar"></span>



      </button>



      <a class="navbar-brand" href="#">::: SGB :::</a>



    </div>







    <!-- Collect the nav links, forms, and other content for toggling -->



    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">



      <ul class="nav navbar-nav">



        



		<?php



		   if ($row2['perfil'] == "Administrador") {



		?>	 

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



		<?php



		   } elseif ($row2['perfil'] == "Ventas") {



		?>



		



			<li class="<?php echo $active_facturas;?>"><a href="facturas.php"><i class='glyphicon glyphicon-list-alt'></i> Consumos <span class="sr-only">(current)</span></a></li>
			<li class="<?php echo $active_caja_chica;?>"><a href="caja_chica.php"><i  class='glyphicon glyphicon-shopping-cart'></i> Caja Chica</a></li>
			<li class="<?php echo $active_cxc;?>"><a href="cxc.php"><i  class='glyphicon glyphicon-usd'></i> CXC</a></li>
			<li class="<?php echo $active_reportes;?>"><a href="reportes.php"><i  class='glyphicon glyphicon-paste'></i> Reportes</a></li>



		<?php



		   } 



		?>	



       </ul>



      <ul class="nav navbar-nav navbar-right">



        <li><a href="http://www.proconty.com" target='_blank'><i class='glyphicon glyphicon-envelope'></i> Soporte</a></li>



		<li><a href="login.php?logout"><i class='glyphicon glyphicon-off'></i> Salir</a></li>



      </ul>



    </div><!-- /.navbar-collapse -->



  </div><!-- /.container-fluid -->



</nav>



	<?php



		}



	?>