Vim�UnDo� �j`i^!F�s�x �1\�ih�F��@����   s                  0       0   0   0    YY�    _�                     d       ����                                                                                                                                                                                                                                                                                                                                                             YWܽ    �   c   e   j      $            '98' => 'alert-warning',5�_�                    d       ����                                                                                                                                                                                                                                                                                                                                                             YW��    �   c   e   j      #            '98' => 'alert-danger',5�_�                    d       ����                                                                                                                                                                                                                                                                                                                                                             YW��    �   c   e   j      $            '98' => 'alert-success',5�_�                    d       ����                                                                                                                                                                                                                                                                                                                                                             YW��    �   c   e   j      !            '98' => 'alert-info',5�_�                    d       ����                                                                                                                                                                                                                                                                                                                                                             YW�r     �   c   e   j      $            '98' => 'alert-pending',5�_�                    d       ����                                                                                                                                                                                                                                                                                                                                                             YW�t    �   c   e   j      $            '98' => 'panel-pending',5�_�                   d       ����                                                                                                                                                                                                                                                                                                                                                             YX$�     �   c   e   j      $            '98' => 'panel-inverse',5�_�                    d       ����                                                                                                                                                                                                                                                                                                                                                             YX$�    �   c   e   j      $            '98' => 'alert-inverse',5�_�                    c       ����                                                                                                                                                                                                                                                                                                                                                             YX-�     �   b   d   j      !            '3'  => 'alert-info',5�_�                    c   #    ����                                                                                                                                                                                                                                                                                                                                                             YX-�     �   b   d   j      (            '3'  => 'alert-pendinginfo',5�_�                   d       ����                                                                                                                                                                                                                                                                                                                                                             YX-�   	 �   c   e   j      $            '98' => 'alert-pending',5�_�                    c       ����                                                                                                                                                                                                                                                                                                                                                             YX-�    �   b   d   j      $            '3'  => 'alert-pending',5�_�                    3        ����                                                                                                                                                                                                                                                                                                                            "           )           V        YXI�     �   3   <   j    �   3   4   j    5�_�                    ;       ����                                                                                                                                                                                                                                                                                                                            "           )           V        YXI�     �   ;   =   r    5�_�                    8       ����                                                                                                                                                                                                                                                                                                                            "           )           V        YXI�     �   7   9   s          public function recibio()5�_�                    :   .    ����                                                                                                                                                                                                                                                                                                                            "           )           V        YXI�     �   9   ;   s      @        return $this->belongsTo(User::class, 'recibio_user_id');5�_�                    :   5    ����                                                                                                                                                                                                                                                                                                                            "           )           V        YXI�    �   9   ;   s      8        return $this->belongsTo(User::class, 'cancelo');5�_�                    5       ����                                                                                                                                                                                                                                                                                                                            "           )           V        YXJ     �   4   6   s      *    * Usuario que recibio la transferencia5�_�                    6       ����                                                                                                                                                                                                                                                                                                                            "           )           V        YXJ	    �   5   7   s          * @return Eloquent5�_�                     6       ����                                                                                                                                                                                                                                                                                                                            "           )           V        YXJ     �   5   7   s          * @return User::class5�_�      !               6       ����                                                                                                                                                                                                                                                                                                                            "           )           V        YXJ    �   5   7   s          * @return User5�_�       "           !   -        ����                                                                                                                                                                                                                                                                                                                            -          -          V       YXJ     �   ,   .   r    �   -   .   r    �   ,   -              * @return Eloquent5�_�   !   #           "   ?        ����                                                                                                                                                                                                                                                                                                                            ?          ?          V       YXJ%     �   >   @   r    �   ?   @   r    �   >   ?              * @return Eloquent5�_�   "   $           #   H       ����                                                                                                                                                                                                                                                                                                                            ?           ?          V       YXJ-    �   G   I   s      #    * @return Eloquent Relationship5�_�   #   %           $   ]       ����                                                                                                                                                                                                                                                                                                                            ]          _                 YXJD    �   ]   `   s                   '2' => 'Completado',   /            '3' => 'Completado con diferencia',�   \   ^   s                  '1' => 'Enviado',5�_�   $   &           %   -       ����                                                                                                                                                                                                                                                                                                                            ]          _                 YXJe    �   ,   .   s          * @return App\User5�_�   %   '           &   ?       ����                                                                                                                                                                                                                                                                                                                            ]          _                 YXJx    �   >   @   s          * @return App\User5�_�   &   (           '   $       ����                                                                                                                                                                                                                                                                                                                            ]          _                 YXJ�    �   #   %   s          * @return Eloquent5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                                                V       YXJ�    �         r    �         r    �                    * @return Eloquent5�_�   (   *           )   4        ����                                                                                                                                                                                                                                                                                                                            4          <           V       YXJ�     �   3   4       	       /**   *    * Usuario que cancelo la transferencia       * @return App\User       */       public function cancelo()       {   @        return $this->belongsTo(User::class, 'cancelo_user_id');       }    5�_�   )   +           *   *        ����                                                                                                                                                                                                                                                                                                                            4          4           V       YXJ�    �   *   4   j    �   *   +   j    5�_�   *   ,           +   Z       ����                                                                                                                                                                                                                                                                                                                            =          =           V       YXJ�     �   Y   [   s          public function estatus ()5�_�   +   -           ,   g        ����                                                                                                                                                                                                                                                                                                                            =          =           V       YXJ�    �   f   h   s      #    public function estatusStyle ()5�_�   ,   .           -   Y        ����                                                                                                                                                                                                                                                                                                                                                             YY�     �   Y   ^   s    �   Y   Z   s    5�_�   -   /           .   ]       ����                                                                                                                                                                                                                                                                                                                                                             YY�    �   ]   _   w    5�_�   .   0           /   Z        ����                                                                                                                                                                                                                                                                                                                            Z          ]          V       YY�     �   Y   Z          %    public function scopeHoy ($query)       {   K        return $query->whereRaw("DATE(fecha_hora)='". date('Y-m-d') . "'");       }5�_�   /               0   Z        ����                                                                                                                                                                                                                                                                                                                            Z          Z          V       YY�    �   Y   Z           5�_�                    d       ����                                                                                                                                                                                                                                                                                                                                                             YX-�     �   c   e   j      #            '98' => 'alert-ending',5�_�                   d       ����                                                                                                                                                                                                                                                                                                                                                             YW݆    �   c   e   j      $            '98' => 'panel-heading',5�_�      	              d   "    ����                                                                                                                                                                                                                                                                                                                                                             YWݖ    �   c   e   j      $            '98' => 'alert-pending',5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             YX$3     �         j          'estatus',5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             YX$5     �         j                  'user_id',5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             YX$6     �         j                      'user_id',5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             YX$8     �         j          'origen_sucursal_id',5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             YX$9     �         j      'origen_sucursal_id',5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             YX$�     �                *        '          folio'                ,�                *    '              estatus'              ,�                *                '  user_id'              ,�                *        '          recibio_user_id'      ,�                *'                  origen_sucursal_id'   ,�                *        '          destino_sucursal_id'  ,5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             YX$W     �                *        '          folio'                ,�                *    '              estatus'              ,�                *                '  user_id'              ,�                *        '          recibio_user_id'      ,�                *'                  origen_sucursal_id'   ,�                *        '          destino_sucursal_id'  ,5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             YX$G     �                )                ' folio               ' ,�                )                ' estatus             ' ,�                )                ' user_id             ' ,�                )                ' recibio_user_id     ' ,�                )                ' origen_sucursal_id  ' ,�                )                ' destino_sucursal_id ' ,5��