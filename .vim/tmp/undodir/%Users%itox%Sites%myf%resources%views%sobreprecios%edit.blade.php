Vim�UnDo� ��������RS�9 �m������8��;   �   ,    <div class="row" id="sobreprecios-edit">            
       
   
   
    Yz�%    _�                             ����                                                                                                                                                                                                                                                                                                                                                             Yz��    �         �       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Yz��     �                {{ $sobreprecio }}5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             Yz�     �         �      *<div class="row" id="sobreprecios-create">5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Yz�P    �   �   �          p<script src="{{ url('libs/bower/bootstrap-datepicker/dist/locales/bootstrap-datepicker.es.min.js') }}"></script>�   �   �          h<script src="{{ url('libs/bower/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js') }}"></script>�   �   �          q<link rel="stylesheet" href="{{ url('libs/bower/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css') }}">�   �   �          </div>�   �   �          	</form>�   �   �          		</div>�   �   �          				</div>�   �   �          
				</div>�   �   �          ^					<button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Guardar</button>�   �   �          				<div class="text-right">�   �   �          			<div class="panel-footer">�   �   �          				</div>�   �   �          
				</div>�   �   �          					</div>�      �          						</div>�   ~   �          							</div>�   }             								</div>�   |   ~          									</div>�   {   }          										</div>�   z   |          											</div>�   y   {          												</div>�   x   z          													</div>�   w   y          														</div>�   v   x          �															<button class="btn btn-xs btn-danger" @click.prevent="eliminarProductoCategoria(categoria.id, producto.id)"> <i class="fa fa-trash"></i> </button>�   u   w          /														<div class="col-sm-3 text-right">�   t   v          														</div>�   s   u          #															@{{producto.nombre}}�   r   t          $														<div class="col-sm-9">�   q   s          													<div class="row">�   p   r          Q												<div class="list-group-item" v-for="producto in categoria.productos">�   o   q          j											<div class="list-group" style="max-height: 500px; overflow-y: scroll; border: 1px solid #CCC;">�   m   o          											</div>�   l   n          												</div>�   k   m          													</div>�   j   l          �														<div class="col-sm-3 text-right"><button class="btn btn-xs btn-danger" @click.prevent="eliminarCategoria(categoria.id)"><i class="fa fa-trash"></i> </button></div>�   i   k          ?														<div class="col-sm-9">@{{categoria.nombre}}</div>�   h   j          													<div class="row">�   g   i          )												<div class="list-group-item">�   f   h          #											<div class="list-group">�   e   g          "										<div class="panel-body">�   d   f          *									<div class="panel panel-inverse">�   c   e          G								<div class="col-sm-6" v-for="categoria in peticion.categorias">�   b   d          							<div class="row">�   `   b          							<br>�   _   a          &							<small>Buscar categoria</small>�   ^   `          							</select>�   ]   _          F								<option value="" selected="selected">Buscar categoria</option>�   \   ^          :							<select id="buscar-categoria" style="width: 100%;">�   [   ]           						<div class="well well-sm">�   Z   \          					<div class="col-sm-12">�   Y   [          				<div class="row">�   W   Y          
				</div>�   V   X          					</div>�   U   W          						</div>�   T   V          							</div>�   S   U          								</div>�   R   T          									</div>�   Q   S          										</div>�   P   R          �											<button class="btn btn-xs btn-danger" @click.prevent="eliminarProducto(producto.id)"><i class="fa fa-trash"></i> </button>�   O   Q          +										<div class="col-sm-2 text-right">�   N   P          										</div>�   M   O          											@{{producto.nombre}}�   L   N          !										<div class="col-sm-10">�   K   M          									<div class="row">�   J   L          L								<div v-for="producto in peticion.productos" class="list-group-item">�   I   K          							<div class="list-group">�   H   J          							<br>�   G   I          %							<small>Buscar producto</small>�   F   H          							</select>�   E   G          E								<option value="" selected="selected">Buscar producto</option>�   D   F          9							<select id="buscar-producto" style="width: 100%;">�   C   E           						<div class="well well-sm">�   B   D          					<div class="col-sm-6">�   A   C          					</div>�   @   B          						</div>�   >   @          							</div>�   =   ?          								</div>�   <   >          									</div>�   ;   =          										</div>�   :   <          �											<button class="btn btn-xs btn-danger" @click.prevent="eliminarSucursal(sucursal.id)"><i class="fa fa-trash"></i> </button>�   9   ;          +										<div class="col-sm-2 text-right">�   8   :          										</div>�   7   9          											@{{sucursal.nombre}}�   6   8          !										<div class="col-sm-10">�   5   7          									<div class="row">�   4   6          M								<div v-for="sucursal in peticion.sucursales" class="list-group-item">�   3   5          							<div class="list-group">�   2   4          							<br>�   1   3          %							<small>Buscar sucursal</small>�   0   2          							</select>�   /   1          E								<option value="" selected="selected">Buscar sucursal</option>�   .   0          9							<select id="buscar-sucursal" style="width: 100%;">�   -   /           						<div class="well well-sm">�   ,   .          					<div class="col-sm-6">�   +   -          				<div class="row">�   )   +          
				</div>�   (   *          					</div>�   '   )          						</div>�   &   (          =							<small>Fecha en la que termina el sobre precio</small>�   %   '          b							<input type="text" class="form-control input-sm datepicker" id="fecha_fin" required="true">�   $   &          						<div class="col-sm-6">�   #   %          						</div>�   "   $          8							<small>Fecha en que inicia el sobreprecio</small>�   !   #          e							<input type="text" class="form-control input-sm datepicker" id="fecha_inicio" required="true">�       "          						<div class="col-sm-6">�      !          					<div class="row">�                 				<div class="well well-sm">�                
				</div>�                					</div>�                						</div>�                2							<small>Tasa o monto del sobreprecio</small>�                Q							<input type="text" class="form-control input-sm" v-model="peticion.monto">�                						<div class="col-sm-4">�                						</div>�                K							<small>Factor mediante el cual se calculará el sobre precio</small>�                							</select>�                a								<option v-for="factor in factores" :value="factor.value">@{{factor.descripcion}}</option>�                G							<select class="form-control input-sm" v-model="peticion.factor">�                						<div class="col-sm-4">�                						</div>�                ,							<small>Nombre del sobreprecio</small>�                b							<input type="text" class="form-control input-sm" required="true" v-model="peticion.nombre">�                						<div class="col-sm-4">�                					<div class="row">�                				<div class="well well-sm">�   	             			<div class="panel-body">�      
          				</div>�      	          4				<h3 class="panel-title">Agregar sobreprecio</h3>�                			<div class="panel-heading">�                #		<div class="panel panel-inverse">�                .	<form @submit.prevent="guardarSobreprecio()">�                (<div class="row" id="sobreprecios-edit">5�_�                      ,    ����                                                                                                                                                                                                                                                                                                                                                             Yz�     �      	   �      D                    <h3 class="panel-title">Agregar sobreprecio</h3>5�_�      	                 2    ����                                                                                                                                                                                                                                                                                                                                                             Yz�    �      	   �      D                    <h3 class="panel-title">Editar  sobreprecio</h3>5�_�      
          	      &    ����                                                                                                                                                                                                                                                                                                                                                             Yz�    �         �      5        <form @submit.prevent="guardarSobreprecio()">5�_�   	               
          ����                                                                                                                                                                                                                                                                                                                                                             Yz�$    �         �      ,    <div class="row" id="sobreprecios-edit">5�_�              	             ����                                                                                                                                                                                                                                                                                                                                                             Yz�     �         �      *                div class="panel-heading">5�_�                       %    ����                                                                                                                                                                                                                                                                                                                                                             Yz��     �         �      D                                <smal>Nombre del sobreprecio</small>5��