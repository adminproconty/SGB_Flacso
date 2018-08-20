<?php

		if (isset($con))

		{

	?>	

			<!-- Modal -->

			<div class="modal fade bs-example-modal-lg" id="cierreCaja" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
				  <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Cierre de Caja</h4>
				  </div>
				  <div class="modal-body" id="form_add_producto">
                    <div class="table-responsive">
                        <table class="table" id="tablaCierre">
                            <tbody></tbody>
                        </table>
                    </div>
                    <input type="hidden" id="totalCierre">
                    <input type="hidden" id="idAcc">
				  </div>
				  <div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
			        <button type="submit" class="btn btn-primary" id="abrir_caja" onclick="cerrarCaja()">Cerrar Caja</button>
				  </div>
				</div>
			  </div>
			</div>

	<?php

		}

	?>