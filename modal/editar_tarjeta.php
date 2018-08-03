<?php
		if (isset($con))
		{
	?>
	<!-- Modal -->
	<div class="modal fade" id="updateTarjeta" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
		<div class="modal-content">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<h4 class="modal-title" id="myModalLabel"><i class='glyphicon glyphicon-edit'></i> Editar tarjeta</h4>
		  </div>
		  <div class="modal-body">
		    <form class="form-horizontal" method="post" id="editar_tarjeta" name="editar_tarjeta">
			<div id="resultados_ajax2"></div>

            <div class="form-group">
				<label for="codigo" class="col-sm-3 control-label">Cliente</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control" id="mod_cliente" name="mod_cliente" disabled>
				</div>
			</div>	

            <div class="form-group">
				<label for="codigo" class="col-sm-3 control-label">Código Tarjeta</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control" id="mod_codigo" name="mod_codigo" disabled>
				  <input type="hidden" class="form-control" id="mod_id_tarjetas" name="mod_id_tarjetas">
				</div>
			</div>	

            <div class="form-group">
				<label for="documento" class="col-sm-3 control-label">Monto($)</label>
				<div class="col-sm-8">
				  <input type="number" class="form-control" id="mod_monto" name="mod_monto" min="5" step="0.1" required>
				</div>
			</div>
			  
			<div class="form-group">
				<label for="mod_estado" class="col-sm-3 control-label">Estado</label>
				<div class="col-sm-8">
				<select class="form-control" id="mod_estado" name="mod_estado" required>
					<option value="">-- Selecciona estado --</option>
					<option value="1" selected>Activa</option>
					<option value="4">Anulada</option>
				  </select>
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
			<button type="submit" class="btn btn-primary" id="actualizar_tarjeta">Actualizar tarjeta</button>
		</div>
	</form>
</div>
</div>
</div>

<?php
	}
?>