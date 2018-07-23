<?php

		if (isset($con))

		{

	?>	

			<!-- Modal -->

			<div class="modal fade bs-example-modal-lg" id="modAbonarCXC" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

			  <div class="modal-dialog modal-lg" role="document">

				<div class="modal-content">

				  <div class="modal-header">

					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

					<h4 class="modal-title" id="myModalLabel">Abonar Cuenca</h4>

				  </div>

				  <div class="modal-body" id="form_add_producto">

					<form class="form-horizontal" id="form-abonar">

					  <div class="form-group row">

                        <label class="col-md-2 col-lg-2 col-sm-6 col-xs-6 col-md-offset-3 col-lg-offset-3 control-label">Monto Abonar </label>
						<div class="col-sm-6 col-md-4 col-xs-6 col-lg-4">

						  <input type="number" class="form-control" id="monto">
						  <input type="hidden" id="id_cliente">

						</div>

					  </div>

					</form>

				  </div>

				  <div class="modal-footer">

					<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>

			        <button type="submit" class="btn btn-primary" id="agregar_item" onclick="abonar()">Abonar</button>

				  </div>

				</div>

			  </div>

			</div>

	<?php

		}

	?>