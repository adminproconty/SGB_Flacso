<?php
		if (isset($con))
		{
	?>
	<!-- Modal -->
	<div class="modal fade" id="nuevaTarjeta" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
		<div class="modal-content">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<h4 class="modal-title" id="myModalLabel"><i class='glyphicon glyphicon-edit'></i> Agregar nueva tarjeta</h4>
		  </div>
		  <div class="modal-body">
			<form class="form-horizontal" method="post" id="guardar_tarjeta" name="guardar_tarjeta">
			<div id="resultados_ajax"></div>			  
			  <div class="form-group">
				<label for="nombre" class="col-sm-3 control-label">Cliente</label>
				<div class="col-sm-8">
                <input type="text" class="form-control" id="input_cliente" placeholder="Selecciona un cliente" required>
								<input id="id_cliente" type='hidden' name="id_cliente">	
				</div>
			  </div>
			  <div class="form-group">
				<label for="documento" class="col-sm-3 control-label">Monto($)</label>
				<div class="col-sm-8">
				  <input type="number" class="form-control" id="monto" name="monto" >
				</div>
			  </div>
        
				<div class="form-group">
				<label for="codigo" class="col-sm-3 control-label">Código Tarjeta</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control" id="codigo" name="codigo" required disabled>
				</div>
			  </div>	 
			
		  </div>
		  <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
			<button type="submit" class="btn btn-primary" id="guardar_datos">Guardar datos</button>
		  </div>
		  </form>
		</div>
	  </div>
	</div>
	<?php
		}
	?>