Vim�UnDo� ߋ�7YӠ�wm�:r'���Ϟ(֖ɫFD��   _                                       0          A       A   A   A    Yf�_    _�                    	   K    ����                                                                                                                                                                                                                                                                                                                                                             Yf�l     �      
   T      f            @component('components.panel', ['titulo' => 'EDITAR '.$tipo_str, 'displayErrors' => true])5�_�                    	   N    ����                                                                                                                                                                                                                                                                                                                                                             Yf�o     �      
   T      j            @component('components.panel', ['titulo' => 'EDITAR '.$tipo_str .'', 'displayErrors' => true])5�_�                    	   B    ����                                                                                                                                                                                                                                                                                                                                                             Yf�q     �      
   T      k            @component('components.panel', ['titulo' => 'EDITAR '.$tipo_str .' ', 'displayErrors' => true])5�_�                    	   A    ����                                                                                                                                                                                                                                                                                                                                                             Yf�r     �      
   T      l            @component('components.panel', ['titulo' => 'EDITAR '. $tipo_str .' ', 'displayErrors' => true])5�_�                    	   R    ����                                                                                                                                                                                                                                                                                                                                                             Yf�v    �      
   T      m            @component('components.panel', ['titulo' => 'EDITAR ' . $tipo_str .' ', 'displayErrors' => true])5�_�      	              	   ^    ����                                                                                                                                                                                                                                                                                                                                                             Yf҄    �      
   T      y            @component('components.panel', ['titulo' => 'EDITAR ' . $tipo_str .' ' . $sucursal, 'displayErrors' => true])5�_�      
           	   	   M    ����                                                                                                                                                                                                                                                                                                                            	   f       	   M       v   M    YfҔ    �      
   T      �            @component('components.panel', ['titulo' => 'EDITAR ' . $tipo_str .' ' . $sucursal->nombre, 'displayErrors' => true])5�_�   	              
   	   M    ����                                                                                                                                                                                                                                                                                                                            	   f       	   M       v   M    YfҚ    �      
   T      g            @component('components.panel', ['titulo' => 'EDITAR ' . $tipo_str 'displayErrors' => true])5�_�   
                 P        ����                                                                                                                                                                                                                                                                                                                            	   f       	   M       v   M    Yfҩ    �   O   Q                          ])5�_�                    1        ����                                                                                                                                                                                                                                                                                                                            1          1          V       Yf��    �   0   2          �                            @include('components.checkbox', ['id' => 'habilitar_ventas', 'seleccionado' => $sucursal->ventas, 'name' => 'habilitar_ventas', 'label' => 'Habilitar ventas', 'leyenda' => '¿La sucursal podra realizar ventas y cobros?'])5�_�                    5        ����                                                                                                                                                                                                                                                                                                                            5          5          V       Yf�     �   4   6         s                            @include('components.select', ['name' => 'precio_menudeo_uno', 'opciones' => $precios, 'seleccionado' => $sucursal->precio_menudeo_uno->id, 'value' => 'id', 'descripcion' => 'nombre', 'placeholder' => 'Precio menudeo uno*', 'label' => true, 'leyenda' => 'Categoría de precio que se maneja en el punto de venta de la terminal al Menudeo Uno'])5�_�                    7        ����                                                                                                                                                                                                                                                                                                                            7           7           V        Yf�     �   6   8         s                            @include('components.select', ['name' => 'precio_menudeo_dos', 'opciones' => $precios, 'seleccionado' => $sucursal->precio_menudeo_dos->id, 'value' => 'id', 'descripcion' => 'nombre', 'placeholder' => 'Precio menudeo dos*', 'label' => true, 'leyenda' => 'Categoría de precio que se maneja en el punto de venta de la terminal al Menudeo Dos'])5�_�                    9        ����                                                                                                                                                                                                                                                                                                                            9           9           V        Yf�     �   8   :         �                            @include('components.select', ['name' => 'precio_medio_mayoreo_uno', 'opciones' => $precios, 'seleccionado' => $sucursal->precio_medio_mayoreo_uno->id, 'value' => 'id', 'descripcion' => 'nombre', 'placeholder' => 'Precio medio mayoreo uno*', 'label' => true, 'leyenda' => 'Categoría de precio que se maneja en el punto de venta de la terminal a Medio Mayoreo Uno'])5�_�                    ;        ����                                                                                                                                                                                                                                                                                                                            ;           ;           V        Yf�     �   :   <         �                            @include('components.select', ['name' => 'precio_medio_mayoreo_dos', 'opciones' => $precios, 'seleccionado' => $sucursal->precio_medio_mayoreo_dos->id, 'value' => 'id', 'descripcion' => 'nombre', 'placeholder' => 'Precio medio mayoreo dos*', 'label' => true, 'leyenda' => 'Categoría de precio que se maneja en el punto de venta de la terminal al Mayoreo Dos'])5�_�                    =        ����                                                                                                                                                                                                                                                                                                                            =           =           V        Yf�    �   <   >         c                            @include('components.select', ['name' => 'precio_mayoreo', 'opciones' => $precios, 'seleccionado' => $sucursal->precio_mayoreo->id, 'value' => 'id', 'descripcion' => 'nombre', 'placeholder' => 'Precio mayoreo*', 'label' => true, 'leyenda' => 'Categoría de precio que se maneja en el punto de venta de la terminal al Mayoreo'])5�_�                    5        ����                                                                                                                                                                                                                                                                                                                            5           5           V        Yf�'   	 �   4   6         {                            {{--@include('components.select', ['name' => 'precio_menudeo_uno', 'opciones' => $precios, 'seleccionado' => $sucursal->precio_menudeo_uno->id, 'value' => 'id', 'descripcion' => 'nombre', 'placeholder' => 'Precio menudeo uno*', 'label' => true, 'leyenda' => 'Categoría de precio que se maneja en el punto de venta de la terminal al Menudeo Uno'])--}}5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       Yf��     �                )                        <div class="row">   h                            <label class="col-sm-4 control-label" for="descripcion">Descripción</label>   2                            <div class="col-sm-8">   �                                <textarea name="descripcion" id="descripcion" rows="5" cols="33" class="form-control input-sm">{{ $sucursal->descripcion  }}</textarea>   "                            </div>                           </div>5�_�                    8       ����                                                                                                                                                                                                                                                                                                                                                V       Yf��     �   7   >   N    �   8   9   N    5�_�                    8       ����                                                                                                                                                                                                                                                                                                                                                V       Yf��     �   7   9   T    5�_�                    9       ����                                                                                                                                                                                                                                                                                                                            >          9          V       Yf��     �   8   ?   U      )                        <div class="row">   h                            <label class="col-sm-4 control-label" for="descripcion">Descripción</label>   2                            <div class="col-sm-8">   �                                <textarea name="descripcion" id="descripcion" rows="5" cols="33" class="form-control input-sm">{{ $sucursal->descripcion  }}</textarea>   "                            </div>                           </div>5�_�                    9        ����                                                                                                                                                                                                                                                                                                                            9          >          V       Yf��     �   8   ?   U      %                    <div class="row">   d                        <label class="col-sm-4 control-label" for="descripcion">Descripción</label>   .                        <div class="col-sm-8">   �                            <textarea name="descripcion" id="descripcion" rows="5" cols="33" class="form-control input-sm">{{ $sucursal->descripcion  }}</textarea>                           </div>                       </div>5�_�                    9       ����                                                                                                                                                                                                                                                                                                                            9          >          V       Yf��    �   8   ?   U      )                        <div class="row">   h                            <label class="col-sm-4 control-label" for="descripcion">Descripción</label>   2                            <div class="col-sm-8">   �                                <textarea name="descripcion" id="descripcion" rows="5" cols="33" class="form-control input-sm">{{ $sucursal->descripcion  }}</textarea>   "                            </div>                           </div>5�_�                   /  p    ����                                                                                                                                                                                                                                                                                                                            9          >          V       Yf�y    �   .   0   U     s                            @include('components.select', ['name' => 'precio_menudeo_uno', 'opciones' => $precios, 'seleccionado' => $sucursal->precio_menudeo_uno->id, 'value' => 'id', 'descripcion' => 'nombre', 'placeholder' => 'Precio menudeo uno*', 'label' => true, 'leyenda' => 'Categoría de precio que se maneja en el punto de venta de la terminal al Menudeo Uno'])5�_�                    /   X    ����                                                                                                                                                                                                                                                                                                                            9          >          V       Yf֓    �   .   0   U     V                            @include('components.select', ['name' => 'precio_menudeo_uno', 'opciones' => $precios, 'seleccionado' => $sucursal->precio_menudeo_uno->id, 'value' => 'id', 'descripcion' => 'nombre', 'placeholder' => 'Precio menudeo uno*', 'label' => true, 'leyenda' => 'Categoría de precio que se maneja en el punto de venta.'])5�_�                    /   [    ����                                                                                                                                                                                                                                                                                                                            9          >          V       Yf֡     �   .   0   V                                  �   .   0   U    5�_�                    /   '    ����                                                                                                                                                                                                                                                                                                                            :          ?          V       Yfֱ     �   .   2   V      '                            .form-group5�_�                    0       ����                                                                                                                                                                                                                                                                                                                            <          A          V       Yfִ     �   /   1   X                                  5�_�                     0   &    ����                                                                                                                                                                                                                                                                                                                            <          A          V       Yfֺ     �   /   1   Z      >                                <select id="$cursor$" name="">�   0   3   X    �   /   1          &                                select5�_�      !               0   ;    ����                                                                                                                                                                                                                                                                                                                            >          C          V       Yfֿ     �   /   1   Z      =                                <select id="precios" name="">5�_�       "           !   1   5    ����                                                                                                                                                                                                                                                                                                                            >          C          V       Yf��     �   0   2   Z      >                                    <option value=""></option>5�_�   !   #           "   1   =    ����                                                                                                                                                                                                                                                                                                                            >          C          V       Yf��     �   0   2   Z      M                                    <option value="">-- Seleeccionar</option>5�_�   "   $           #   1   C    ����                                                                                                                                                                                                                                                                                                                            >          C          V       Yf��    �   0   2   Z      L                                    <option value="">-- Seleccionar</option>5�_�   #   %           $   1   J    ����                                                                                                                                                                                                                                                                                                                            >          C          V       Yf��     �   1   3   Z    �   1   2   Z    5�_�   $   &           %   2   8    ����                                                                                                                                                                                                                                                                                                                            ?          D          V       Yf��     �   1   3   [      T                                    <option value="">-- Seleccionar precios</option>5�_�   %   '           &   2   5    ����                                                                                                                                                                                                                                                                                                                            ?          D          V       Yf��     �   1   3   [      I                                    <option value="">--  precios</option>5�_�   &   (           '   2   8    ����                                                                                                                                                                                                                                                                                                                            ?          D          V       Yf��     �   1   3   [      C                                    <option value=""> {{}}</option>5�_�   '   )           (   2   9    ����                                                                                                                                                                                                                                                                                                                            ?          D          V       Yf��    �   1   3   [      E                                    <option value=""> {{  }}</option>5�_�   (   *           )   2   3    ����                                                                                                                                                                                                                                                                                                                            ?          D          V       Yf��     �   1   3   [      M                                    <option value=""> {{ $precios }}</option>5�_�   )   +           *   2   5    ����                                                                                                                                                                                                                                                                                                                            ?          D          V       Yf��     �   1   3   [      Q                                    <option value="{{}}"> {{ $precios }}</option>5�_�   *   ,           +   2   6    ����                                                                                                                                                                                                                                                                                                                            ?          D          V       Yf��     �   1   3   [      S                                    <option value="{{  }}"> {{ $precios }}</option>5�_�   +   -           ,   2   R    ����                                                                                                                                                                                                                                                                                                                            ?          D          V       Yf��     �   1   3   [      ^                                    <option value="{{ $precio->id }}"> {{ $precios }}</option>5�_�   ,   .           -   2   P    ����                                                                                                                                                                                                                                                                                                                            ?          D          V       Yf��     �   1   3   \      $                                    �   1   3   [    5�_�   -   /           .   3   -    ����                                                                                                                                                                                                                                                                                                                            @          E          V       Yf�     �   3   5   ]      $                                    �   3   5   \    5�_�   .   0           /   2   .    ����                                                                                                                                                                                                                                                                                                                            A          F          V       Yf�    �   1   3   ]      /                                    @foreach ()5�_�   /   1           0   5   (    ����                                                                                                                                                                                                                                                                                                                            A          F          V       Yf�     �   4   6   ^      $                                    �   4   6   ]    5�_�   0   2           1   5   )    ����                                                                                                                                                                                                                                                                                                                            B          G          V       Yf�#    �   4   6   ^      )                                    small5�_�   1   3           2   0   C    ����                                                                                                                                                                                                                                                                                                                            B          G          V       Yf�B     �   /   1   ^      D                                <select id="precios" name="precios">5�_�   2   4           3   0   K    ����                                                                                                                                                                                                                                                                                                                            B          G          V       Yf�E    �   /   1   ^      M                                <select id="precios" name="precios" class="">5�_�   3   5           4   3   Q    ����                                                                                                                                                                                                                                                                                                                            B          G          V       Yf�f    �   2   4   ^      ]                                    <option value="{{ $precio->id }}"> {{ $precio }}</option>5�_�   4   6           5   0   W    ����                                                                                                                                                                                                                                                                                                                            B          G          V       Yf��     �   /   1   ^      Y                                <select id="precios" name="precios" class="form-control">5�_�   5   7           6   0   `    ����                                                                                                                                                                                                                                                                                                                            B          G          V       Yf��    �   /   1   ^      b                                <select id="precios" name="precios" class="form-control input-sm">5�_�   6   8           7   0   X    ����                                                                                                                                                                                                                                                                                                                            B          G          V       Yf��    �   /   1   ^      _                                <select id="precios" name="precios" class="form-control input">5�_�   7   9           8   8   M    ����                                                                                                                                                                                                                                                                                                                                                             Yf�    �   7   9   ^     K                            @include('components.select', ['name' => 'precios', 'opciones' => $precios, 'seleccionado' => $sucursal->precio_menudeo_uno->id, 'value' => 'id', 'descripcion' => 'nombre', 'placeholder' => 'Precio menudeo uno*', 'label' => true, 'leyenda' => 'Categoría de precio que se maneja en el punto de venta.'])5�_�   8   ;           9   /        ����                                                                                                                                                                                                                                                                                                                            7   !       /   4       V   :    Yf��     �   6   8          "                            </div>�   5   7          )                                </select>�   4   6          j                                    <small>Categoria de precio que se maneja en el punto de venta.</small>�   3   5          /                                    @endforeach�   2   4          i                                        <option value="{{ $precio->id }}"> {{ $precio->nombre }}</option>�   1   3          B                                    @foreach ($precios as $precio)�   0   2          T                                    <option value="">-- Seleccionar precios</option>�   /   1          b                                <select id="precios" name="precios" class="form-control sm-input">�   .   0          4                            <div class="form-group">5�_�   9   <   :       ;   8   e    ����                                                                                                                                                                                                                                                                                                                            7   !       /   4       V   :    Yf�	    �   7   9         J                            @include('components.select', ['name' => 'precio', 'opciones' => $precios, 'seleccionado' => $sucursal->precio_menudeo_uno->id, 'value' => 'id', 'descripcion' => 'nombre', 'placeholder' => 'Precio menudeo uno*', 'label' => true, 'leyenda' => 'Categoría de precio que se maneja en el punto de venta.'])5�_�   ;   >           <   /        ����                                                                                                                                                                                                                                                                                                                            7   )       /   <       V   e    Yf�    �   6   8          *                            {{--</div>--}}�   5   7          1                                {{--</select>--}}�   4   6          r                                    {{--<small>Categoria de precio que se maneja en el punto de venta.</small>--}}�   3   5          7                                    {{--@endforeach--}}�   2   4          q                                        {{--<option value="{{ $precio->id }}"> {{ $precio->nombre }}</option>--}}�   1   3          J                                    {{--@foreach ($precios as $precio)--}}�   0   2          \                                    {{--<option value="">-- Seleccionar precios</option>--}}�   /   1          j                                {{--<select id="precios" name="precios" class="form-control sm-input">--}}�   .   0          <                            {{--<div class="form-group">--}}5�_�   <   ?   =       >   0   [    ����                                                                                                                                                                                                                                                                                                                            7   )       /   <       V   e    Yf�D     �   /   1   ^      b                                <select id="precios" name="precios" class="form-control sm-input">5�_�   >   @           ?   0   ]    ����                                                                                                                                                                                                                                                                                                                            7   )       /   <       V   e    Yf�G    �   /   1   ^      _                                <select id="precios" name="precios" class="form-control input">5�_�   ?   A           @   0   _    ����                                                                                                                                                                                                                                                                                                                            7   )       /   <       V   e    Yf�Q     �   /   1   _                                       �   /   1   ^    5�_�   @               A   0   '    ����                                                                                                                                                                                                                                                                                                                            8   )       /   <       V   e    Yf�^    �   /   1   _      /                                <label></label>5�_�   <           >   =   0   !    ����                                                                                                                                                                                                                                                                                                                            7   )       /   <       V   e    Yf�=     �   0   1   ^    �   /   1   ^                                      <class="form-control input-sm"select id="precios" name="precios" class="form-control sm-input">5�_�   9           ;   :   8   e    ����                                                                                                                                                                                                                                                                                                                            7   !       /   4       V   :    Yf��    �   7   9   ^     N                        @include('components.select', ['name' => 'precio', 'opciones' => $precios->nombre, 'seleccionado' => $sucursal->precio_menudeo_uno->id, 'value' => 'id', 'descripcion' => 'nombre', 'placeholder' => 'Precio menudeo uno*', 'label' => true, 'leyenda' => 'Categoría de precio que se maneja en el punto de venta.'])5�_�                    /   X    ����                                                                                                                                                                                                                                                                                                                            9          >          V       Yf��    �   .   0   U     g                            @include('components.select', ['name' => 'precio', 'opciones' => $precios, 'seleccionado' => $sucursal->precio_menudeo_uno->id, 'value' => 'id', 'descripcion' => 'nombre', 'placeholder' => 'Precio menudeo uno*', 'label' => true, 'leyenda' => 'Categoría de precio que se maneja en el punto de venta de la terminal al Menudeo Uno'])5�_�                    	   ?    ����                                                                                                                                                                                                                                                                                                                                                             Yf�b     �      
   T      i            @component('components.panel', ['titulo' => 'EDITARasd '.$tipo_str, 'displayErrors' => true])5�_�                     	   ?    ����                                                                                                                                                                                                                                                                                                                                                             Yf�c    �      
   T      j            @component('components.panel', ['titulo' => 'EDITAR asd '.$tipo_str, 'displayErrors' => true])5��