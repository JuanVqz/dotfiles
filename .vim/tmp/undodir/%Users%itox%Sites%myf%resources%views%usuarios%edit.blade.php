Vim�UnDo� �7�]p����0�?Z/�k���%-�Q���mA�/   �   �                            @include('components.input', ['placeholder' => 'Pago por vuelta motociclista', 'name' => 'pago_sucursal_moto',  'value' => $user->empleo->pago_,'required' => false, 'label' => true])   J   �                       YN2   
 _�                             ����                                                                                                                                                                                                                                                                                                                                                             YLW     �                <div class="container-fluid">5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             YLX     �                	<div class="col-sm-12">5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             YL`     �   �   �          	</div>5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             YL`    �   �   �          </div>5�_�                            ����                                                                                                                                                                                                                                                                                                                                       �           V        YLr     �      �   �   �   B		<form action="{{ route('users.update', $user) }}" method="POST">   3			<input type="hidden" name="_method" value="PUT">   			{{csrf_field()}}   �			@component('components.panel', ['color' => 'inverse', 'titulo' => 'Editar información del usuario ' . $user->alias, 'displayErrors' => true])   				<div class="row">   					<div class="col-sm-4">    						<div class="well well-sm">   -							<legend>Información personal</legend>   �							@include('components.input', ['placeholder' => 'Nombre completo', 'name' => 'name', 'value' => $user->name, 'required' => true, 'label' => true])   �							@include('components.input', ['placeholder' => 'Alias', 'name' => 'alias', 'value' => $user->alias, 'required' => true, 'label' => true])   �							@include('components.input', ['placeholder' => 'R.F.C', 'name' => 'rfc', 'value' => $user->rfc, 'required' => false, 'label' => true])  							@include('components.input', ['placeholder' => 'Fecha nacimiento', 'name' => 'fecha_nacimiento', 'value' => $user->fecha_nacimiento, 'required' => false, 'label' => true, 'plugin' => 'datepicker', 'pluginOptions' => '{format:\'yyyy-mm-dd\', language: \'es\'}'])       "							<legend>Dirección</legend>   �							@include('components.input', ['placeholder' => 'Teléfono', 'name' => 'telefono', 'value' => $user->direccion->telefono, 'required' => false, 'label' => true])   �							@include('components.input', ['placeholder' => 'Municipio', 'name' => 'municipio', 'value' => $user->direccion->municipio, 'required' => false, 'label' => true])       �							@include('components.input', ['placeholder' => 'Calle', 'name' => 'calle', 'value' => $user->direccion->calle, 'required' => true, 'label' => true])   							<div class="row">   								<div class="col-sm-6">   �									@include('components.input', ['placeholder' => 'Num. ext', 'name' => 'numero_exterior', 'value' => $user->direccion->numero_interior, 'required' => false])   								</div>   								<div class="col-sm-6">   �									@include('components.input', ['placeholder' => 'Num. int', 'name' => 'numero_interior', 'value' => $user->direccion->numero_exterior, 'required' => false])   								</div>   							</div>   �							@include('components.input', ['placeholder' => 'Colonia', 'name' => 'colonia', 'value' => $user->direccion->colonia, 'required' => true, 'label' => true])   �							@include('components.input', ['placeholder' => 'Ciudad', 'name' => 'ciudad', 'value' => $user->direccion->ciudad, 'value' => 'Oaxaca', 'required' => true, 'label' => true])   �							@include('components.input', ['placeholder' => 'Estado', 'name' => 'estado', 'value' => $user->direccion->estado, 'value' => 'Oaxaca', 'required' => true, 'label' => true])   �							@include('components.input', ['placeholder' => 'País', 'name' => 'pais', 'value' => $user->direccion->pais, 'value' => 'México', 'required' => true, 'label' => true])   �							@include('components.input', ['placeholder' => 'Código postal', 'name' => 'cp', 'value' => $user->direccion->cp, 'required' => false, 'label' => true])   						</div>   					</div>       					<div class="col-sm-4">    						<div class="well well-sm">   /							<legend>Información del empleo</legend>   							@if ($user->empleo)  								@include('components.select', ['name' => 'sucursal', 'opciones' => $sucursales, 'seleccionado' => $user->empleo->sucursal->id, 'value' => 'id', 'descripcion' => 'nombre', 'required' => true, 'placeholder' => 'Selecciona una locacion', 'label' => true])   �								@include('components.select', ['name' => 'horario', 'opciones' => $horarios, 'seleccionado' => $user->empleo->horario->id, 'value' => 'id', 'descripcion' => 'nombre', 'required' => true, 'placeholder' => 'Selecciona un horario', 'label' => true])    								<div class="form-group">   									<div class="row">   Z										<label for="periodicidad" class="control-label col-sm-4">Periodo de pago</label>    										<div class="col-sm-8">   ^											<select name="periodicidad" id="periodicidad" class="form-control" required="true">   l												<option value="0" @if ($user->empleo->periodicidad == 0) selected="true" @endif>Semanal</option>   l												<option value="1" @if ($user->empleo->periodicidad == 1) selected="true" @endif>Mensual</option>   											</select>   										</div>   									</div>   								</div>   �								@include('components.input', ['placeholder' => 'Salario diario.', 'name' => 'salario_diario', 'value' => $user->empleo->salario_diario, 'required' => false, 'label' => true])   �								@include('components.input', ['placeholder' => 'Salario domingo.', 'name' => 'salario_domingo', 'value' => $user->empleo->salario_domingo, 'required' => false, 'label' => true])   �								@include('components.input', ['placeholder' => 'Ahorro', 'name' => 'ahorro', 'value' => $user->empleo->ahorro, 'required' => false, 'label' => true])   �								@include('components.input', ['placeholder' => 'Comision venta (%)', 'name' => 'comision_venta', 'value' => $user->empleo->comision_venta,'required' => false, 'label' => true])    								<div class="form-group">   									<div class="row">   W										<label for="asegurado" class="control-label col-sm-4">¿Tiene seguro?</label>    										<div class="col-sm-8">   X											<select name="asegurado" id="asegurado" class="form-control" required="true">   d												<option value="0" @if ($user->empleo->asegurado == 0) selected="true" @endif>No</option>   d												<option value="1" @if ($user->empleo->asegurado == 1) selected="true" @endif>Si</option>   											</select>   										</div>   									</div>   								</div>  %								@include('components.input', ['placeholder' => 'Inscripción seguro social', 'name' => 'fecha_inicio_seguro', 'value' => $user->empleo->fecha_inicio_seguro, 'required' => false, 'label' => true, 'plugin' => 'datepicker', 'pluginOptions' => '{format:\'yyyy-mm-dd\', language: \'es\'}'])   �								@include('components.input', ['placeholder' => 'Número seguro social', 'value' => $user->empleo->nss, 'name' => 'nss', 'required' => false, 'label' => true])   �								@include('components.input', ['min' => 1, 'placeholder' => 'Pago semanal seguro', 'value' => $user->empleo->pago_semanal_seguro, 'name' => 'pago_semanal_seguro', 'required' => false, 'label' => true])   �								@include('components.input', ['min' => 1, 'placeholder' => 'Pago por toma fotografo', 'value' => $user->empleo->pago_toma_fotografo, 'name' => 'pago_toma_fotografo', 'required' => false, 'label' => true])   �								@include('components.input', ['min' => 1, 'placeholder' => 'Pago sucursal motociclista', 'value' => $user->empleo->pago_sucursal_moto, 'name' => 'pago_sucursal_moto', 'required' => false, 'label' => true])   							@else   �								@include('components.select', ['name' => 'sucursal', 'opciones' => $sucursales, 'value' => 'id', 'descripcion' => 'nombre', 'required' => true, 'placeholder' => 'Selecciona una locacion', 'label' => true])   �								@include('components.select', ['name' => 'horario', 'opciones' => $horarios, 'value' => 'id', 'descripcion' => 'nombre', 'required' => true, 'placeholder' => 'Selecciona un horario', 'label' => true])    								<div class="form-group">   									<div class="row">   Z										<label for="periodicidad" class="control-label col-sm-4">Periodo de pago</label>    										<div class="col-sm-8">   ^											<select name="periodicidad" id="periodicidad" class="form-control" required="true">   .												<option value="0">Semanal</option>   .												<option value="1">Mensual</option>   											</select>   										</div>   									</div>   								</div>   �								@include('components.input', ['type' => 'number', 'min' => 1, 'placeholder' => 'Salario diario.', 'name' => 'salario_diario', 'required' => false, 'label' => true])   �								@include('components.input', ['type' => 'number', 'min' => 1, 'placeholder' => 'Salario domingo.', 'name' => 'salario_domingo', 'required' => false, 'label' => true])   �								@include('components.input', ['type' => 'number', 'min' => 1, 'placeholder' => 'Ahorro', 'name' => 'ahorro', 'required' => false, 'label' => true])   �								@include('components.input', ['type' => 'number', 'min' => 1, 'placeholder' => 'Comision venta (%)', 'name' => 'comision_venta', 'required' => false, 'label' => true])    								<div class="form-group">   									<div class="row">   W										<label for="asegurado" class="control-label col-sm-4">¿Tiene seguro?</label>    										<div class="col-sm-8">   X											<select name="asegurado" id="asegurado" class="form-control" required="true">   )												<option value="0">No</option>   )												<option value="1">Si</option>   											</select>   										</div>   									</div>   								</div>   �								@include('components.input', ['placeholder' => 'Inscripción seguro social', 'name' => 'fecha_inicio_seguro', 'required' => false, 'label' => true, 'plugin' => 'datepicker', 'pluginOptions' => '{format:\'yyyy-mm-dd\', language: \'es\'}'])   �								@include('components.input', ['placeholder' => 'Número seguro social', 'name' => 'nss', 'required' => false, 'label' => true])   �								@include('components.input', ['placeholder' => 'Pago semanal seguro', 'name' => 'pago_semanal_seguro', 'required' => false, 'label' => true])   �								@include('components.input', ['placeholder' => 'Pago por toma fotografo', 'name' => 'pago_toma_fotografo', 'required' => false, 'label' => true])   �								@include('components.input', ['placeholder' => 'Pago por vuelta motociclista', 'name' => 'pago_sucursal_moto', 'required' => false, 'label' => true])   							@endif   						</div>   					</div>       					<div class="col-sm-4">    						<div class="well well-sm">   #							<legend>Emergencias</legend>   							@if ($user->empleo)   �								@include('components.input', ['placeholder' => 'Avisar en caso de emergencia a', 'name' => 'avisar_a', 'value' => $user->empleo->avisar_a, 'required' => true, 'label' => true])   �								@include('components.input', ['placeholder' => 'Parentesco', 'name' => 'parentesco', 'value' => $user->empleo->parentesco, 'required' => true, 'label' => true])   �								@include('components.input', ['placeholder' => 'Teléfono contacto', 'name' => 'telefono_contacto', 'value' => $user->empleo->telefono_contacto, 'required' => false, 'label' => true])   							@else   �								@include('components.input', ['placeholder' => 'Avisar en caso de emergencia a', 'name' => 'avisar_a', 'required' => true, 'label' => true])   �								@include('components.input', ['placeholder' => 'Parentesco', 'name' => 'parentesco', 'required' => true, 'label' => true])   �								@include('components.input', ['placeholder' => 'Teléfono contacto', 'name' => 'telefono_contacto', 'required' => false, 'label' => true])   							@endif       0							<legend>Información del usuario</legend>   �							@include('components.input', ['placeholder' => 'Usuario', 'name' => 'username', 'value' => $user->username, 'required' => true, 'label' => true])   �							@include('components.input', ['placeholder' => 'Contraseña', 'name' => 'password', 'type' => 'password', 'label' => true])   �							@include('components.input', ['placeholder' => 'Confirmacion contraseña', 'name' => 'password_confirmation', 'type' => 'password', 'label' => true])   �							@include('components.input', ['type' => 'email', 'placeholder' => 'Correo electronico', 'name' => 'email', 'value' => $user->email, 'type' => 'email', 'required' => false, 'label' => true])   �							@include('components.select', ['name' => 'role', 'opciones' => $roles, 'seleccionado' => $user->role->id, 'value' => 'id', 'descripcion' => 'descripcion', 'required' => true, 'placeholder' => "Selecciona un rol", 'label' => true])   							<div class="form-group">   1								<label for="activo" class="radio-inline">   j									<input type="radio" id="activo" name="activo" value="1" @if($user->activo) checked="true" @endif>   									Habilitar usuario   								</label>   8								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   3								<label for="inactivo" class="radio-inline">   m									<input type="radio" id="inactivo" name="activo" value="0" @if(!$user->activo) checked="true" @endif>   									Inhabilitar usuario   								</label>   							</div>   						</div>   					</div>   
				</div>   				@slot('footer')   					<div class="row">    					    <div class="col-sm-12">   �                            <a href="{{ route('users.index')}}" class="btn btn-sm btn-inverse"><i class="fa fa-arrow-left" aria-hidden="true"></i> Regresar</a>   �                            <div class="pull-right"> <button type="submit" class="btn btn-sm btn-warning">Actualizar</button> </div>   						</div>   					</div>   				@endslot   			@endcomponent   			</form>   		<div class="row">   		    <div class="col-sm-12">   0		        @include('components.button-delete', [   '		            'elemento'  => $user->id,   ;		            'actionUrl' => route('users.destroy', $user),   7		            'confirmar' => '¿Borrarás el usuario?',   		        ])   		    </div>   		</div><br>5�_�                           ����                                                                                                                                                                                                                                                                                                                                       �           V        YLu    �         �          �         �    5�_�                           ����                                                                                                                                                                                                                                                                                                                                       �           V        YL�    �                    <h1>asd</h1>5�_�                   H        ����                                                                                                                                                                                                                                                                                                                            H   X       J   X       V   X    YMs    �   H   J   �      �                            @include('components.input', ['placeholder' => 'Pago por toma fotografo', 'name' => 'pago_toma_fotografo', 'required' => false, 'label' => true])�   G   I   �      �                            @include('components.input', ['placeholder' => 'Pago semanal seguro', 'name' => 'pago_semanal_seguro', 'required' => false, 'label' => true])�   I   K   �      �                            @include('components.input', ['placeholder' => 'Pago por vuelta motociclista', 'name' => 'pago_sucursal_moto', 'required' => false, 'label' => true])�   G   K   �    �   H   I   �    �   G   H          �                            @include('components.input', ['min' => 1, 'placeholder' => 'Pago semanal seguro', 'value' => $user->empleo->pago_semanal_seguro, 'name' => 'pago_semanal_seguro', 'required' => false, 'label' => true])   �                            @include('components.input', ['min' => 1, 'placeholder' => 'Pago por toma fotografo', 'value' => $user->empleo->pago_toma_fotografo, 'name' => 'pago_toma_fotografo', 'required' => false, 'label' => true])   �                            @include('components.input', ['min' => 1, 'placeholder' => 'Pago sucursal motociclista', 'value' => $user->empleo->pago_sucursal_moto, 'name' => 'pago_sucursal_moto', 'required' => false, 'label' => true])5�_�                    H   �    ����                                                                                                                                                                                                                                                                                                                            I   g       I   j       v   j    YN     �   G   I   �      �                            @include('components.input', ['placeholder' => 'Pago semanal seguro', 'name' => 'pago_semanal_seguro', 'value' => $user->empleo->pago_, 'required' => false, 'label' => true])5�_�                    I   �    ����                                                                                                                                                                                                                                                                                                                            I   g       I   j       v   j    YN    �   H   J   �      �                            @include('components.input', ['placeholder' => 'Pago por toma fotografo', 'name' => 'pago_toma_fotografo', 'value' => $user->empleo->pago_, 'required' => false, 'label' => true])5�_�                    J   �    ����                                                                                                                                                                                                                                                                                                                            I   g       I   j       v   j    YN,    �   I   K   �      �                            @include('components.input', ['placeholder' => 'Pago por vuelta motociclista', 'name' => 'pago_sucursal_moto',  'value' => $user->empleo->pago_,'required' => false, 'label' => true])5�_�                     J   �    ����                                                                                                                                                                                                                                                                                                                            I   g       I   j       v   j    YN1   
 �   I   K   �      �                            @include('components.input', ['placeholder' => 'Pago por vuelta motociclista', 'name' => 'pago_sucursal_moto',  'value' => $user->empleo->pago_sucursal_moto,'required' => false, 'label' => true])5�_�                   l   h    ����                                                                                                                                                                                                                                                                                                                            l   Z       j   Z       V   Z    YL�    �   k   m   �      �                            @include('components.input', ['placeholder' => 'el pago moto', 'name' => 'pago_sucursal_moto', 'required' => false, 'label' => true])5�_�          	          j   Z    ����                                                                                                                                                                                                                                                                                                                            l   Z       j   Z       V   Z    YM_     �   i   m   �      �                            @include('components.input', ['placeholder' => 'pago semanal seguro', 'name' => 'pago_semanal_seguro', 'required' => false, 'label' => true])   �                            @include('components.input', ['placeholder' => 'pago por toma fotografo', 'name' => 'pago_toma_fotografo', 'required' => false, 'label' => true])   �                            @include('components.input', ['placeholder' => 'el pago moto', 'name' => 'pago_sucursal_moto', 'required' => false, 'label' => true])5�_�      
          	   l   Z    ����                                                                                                                                                                                                                                                                                                                                       �           V        YM&     �   k   m   �      �                            @include('components.input', [ 'name' => 'pago_sucursal_moto', 'required' => false, 'label' => true])5�_�   	               
   l   ;    ����                                                                                                                                                                                                                                                                                                                                       �           V        YM+    �   k   m   �      �                            @include('components.input', ['name' => 'pago_sucursal_moto', 'required' => false, 'label' => true])5��