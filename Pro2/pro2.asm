NADA        equ      00
JUGADOR     equ      01
PARED       equ      02
CAJA        equ      03
OBJETIVO    equ      04
SUELO       equ      05
.MODEL SMALL
.RADIX 16
.STACK
.DATA
dim_sprite_jug    db   08, 08
data_sprite_jug   db   00, 00, 10, 10, 10, 10, 00, 00
                  db   00, 10, 2C, 2C, 2C, 2C, 10, 00
                  db   10, 2C, 10, 2C, 2C, 10, 00, 00
                  db   10, 2C, 2C, 2C, 10, 00, 00, 00
                  db   10, 2C, 2C, 2C, 2C, 10, 00, 00
                  db   10, 2C, 2C, 2C, 2C, 2C, 10, 00
                  db   00, 10, 2C, 2C, 2C, 10, 00, 00
                  db   00, 00, 10, 10, 10, 00, 00, 00

dim_sprite_flcha  db   08, 08
data_sprite_flcha   db   00, 00, 04, 00, 00, 00, 00, 00
                    db   00, 00, 04, 04, 00, 00, 00, 00
                    db   04, 04, 04, 04, 04, 00, 00, 00
                    db   04, 04, 04, 04, 04, 04, 00, 00
                    db   04, 04, 04, 04, 04, 04, 00, 00
                    db   04, 04, 04, 04, 04, 00, 00, 00
                    db   00, 00, 04, 04, 00, 00, 00, 00
                    db   00, 00, 04, 00, 00, 00, 00, 00
dim_sprite_vacio  db   08, 08
data_sprite_vacio db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
dim_sprite_suelo  db   08, 08
data_sprite_suelo db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 1F, 1F, 00, 00, 00
                  db   00, 00, 00, 1F, 1F, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
dim_sprite_pared  db   08, 08
data_sprite_pared db   7f, 7f, 00, 00, 7f, 7f, 00, 00
                  db   7f, 00, 00, 7f, 7f, 00, 00, 7f
                  db   00, 00, 7f, 7f, 00, 00, 7f, 7f
                  db   00, 7f, 7f, 00, 00, 7f, 7f, 00
                  db   7f, 7f, 00, 00, 7f, 7f, 00, 00
                  db   7f, 00, 00, 7f, 7f, 00, 00, 7f
                  db   00, 00, 7f, 7f, 00, 00, 7f, 7f
                  db   00, 7f, 7f, 00, 00, 7f, 7f, 00
dim_sprite_caja   db   08, 08
data_sprite_caja  db   00, 00, 28, 28, 2, 28, 00, 00
                  db   00, 28, 28, 2, 28, 28, 28, 00
                  db   28, 28, 28, 2, 28, 28, 28, 28
                  db   28, 28, 28, 28, 28, 28, 1F, 28
                  db   28, 28, 28, 28, 28, 28, 1F, 28
                  db   28, 28, 28, 28, 28, 1F, 28, 28
                  db   00, 28, 28, 28, 28, 28, 28, 00
                  db   00, 00, 28, 28, 28, 28, 00, 00
dim_sprite_obj    db   08, 08
data_sprite_obj   db  00,00,1,1,1,1,00,00
                  db  00,1,1,1,1,1,1,00
                  db  1,28,1F,1,1,28,1F,1
                  db  1,1F,1F,1,1,1F,1F,1
                  db  1,1,1,1,1,1,1,1
                  db  1,1,1,1,1,1,1,1
                  db  1,1,1,1,1,1,1,1
                  db  1,00,00,00,00,00,00,1

mapa              db   3e8 dup (0)
iniciar_juego db "INICIAR JUEGO$"
cargar_nivel  db "CARGAR NIVEL$"
configuracion db "CONFIGURACION$"
puntajes      db "PUNTAJES ALTOS$"
salir         db "SALIR$"
iniciales     db "RCGD - 202000544$"
continuar_juego  db "CONTINUAR JUEGO$"
regreso_menu  db "REGRESAR AL MENU$"
contador_tiempo db 	"00:00:00$"
contador_puntaje db 	"00000$"
contador_movimientos db 	"00:00:00$"
mensaje_escribir db "Escriba el nombre del nivel $"
actuales 		db 	"CONTROLES$"
actual_arriba 	db 	"ARRIBA: $"
actual_abajo 	db 	"ABAJO: $"
actual_izquierda db 	"IZQUIERDA: $"
actual_derecha 	db 	"DERECHA: $"
cambiar_controles	db 	"CAMBIAR CONTROLES$"
tecla 			db 	"TECLA: $"
presionar_tecla		db 	"PRESIONE LA TECLA QUE DESEA ASIGNAR$"
tecla_arriba 		db 	"DIRECCION ARRIBA$"
tecla_abajo 		db 	"DIRECCION ABAJO$"
tecla_izquierda 	db 	"DIRECCION IZQUIERDA$"
tecla_derecha 		db 	"DIRECCION DERECHA$"
flechita_arr 		db 	"FLECHA ARRIBA$"
flechita_ab 		db 	"FLECHA ABAJO$"
flechita_izq 		db 	"FLECHA IZQUIERDA$"
flechita_der 		db 	"FLECHA DERECHA$"

;;ENTRADA
linea_nuev db  		0a,"$"
prompt_nivel db 	0a,"NIVEL: ","$"
buffer_nivel db 	20, 00
codigo 		 db 	'$'
;; JUEGO
xJugador      db 0
yJugador      db 0
puntos        dw 0
bandera      db 0
bandera_caja      db 0
;; MENÚS
opcion        db 0
maximo        db 0
xFlecha       dw 0
yFlecha       dw 0
;; CONTROLES
control_arriba    db  48
control_abajo     db  50
control_izquierda db  4b
control_derecha   db  4d
control_arr 	 db  0
control_aba  	 db  0
control_izq  	 db  0
control_der  	 db  0
;; NIVELES
nivel_x           db  "NIV.TXT",00
nivel_nombre	 db  21 dup (0)
handle_nivel      dw  0000
linea             db  100 dup (0)
elemento_actual   db  0
xElemento         db  0
yElemento         db  0
;; TOKENS
tk_pared      db  05,"pared"
tk_suelo      db  05,"suelo"
tk_jugador    db  07,"jugador"
tk_caja       db  04,"caja"
tk_objetivo   db  08,"objetivo"
tk_coma       db  01,","
;;
numero        db  5 dup (30)
.CODE
.STARTUP
inicio:
		;; MODO VIDEO ;;
		mov AH, 00
		mov AL, 13
		int 10
		;;;;;;;;;;;;;;;;
		call menu_principal
		mov AL, [opcion]
		;; > INICIAR JUEGO
		cmp AL, 0
		je cargar_un_nivel
		;; > CARGAR NIVEL
		cmp AL, 1
		je pedir_archivo
		;; > PUNTAJES ALTOS
		;; > CONFIGURACION
		cmp AL, 3
		je menu_configuracion
		;; > SALIR
		cmp AL, 4
		je fin
		;;;;;;;;;;;;;;;;
ciclo_juego:
		call pintar_mapa
		call entrada_juego
		call mostrar_letras
		jmp ciclo_juego
		;;;;;;;;;;;;;;;;
cargar_un_nivel:
		mov AL, 00
		mov DX, offset nivel_x
		mov AH, 3d
		int 21
		jc inicio
		mov [handle_nivel], AX
		;;
ciclo_lineas:
		mov BX, [handle_nivel]
		call siguiente_linea
		cmp DL, 0ff      ;; fin-del-archivo?
		je fin_parseo
		cmp DH, 00      ;; línea-con-algo?
		je ciclo_lineas
		;; al principio del buffer de la línea está: pared, caja, jugador, suelo, objetivo
		mov DI, offset linea
		push DI
		mov SI, offset tk_pared
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_pared
		pop DI
		push DI
		mov SI, offset tk_caja
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_caja
		pop DI
		push DI
		mov SI, offset tk_suelo
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_suelo
		pop DI
		push DI
		mov SI, offset tk_objetivo
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_objetivo
		pop DI
		push DI
		mov SI, offset tk_jugador
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_jugador
		pop DI
		jmp ciclo_lineas
es_pared:
		mov AL, PARED
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_caja:
		mov AL, CAJA
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_suelo:
		mov AL, SUELO
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_objetivo:
		mov AL, OBJETIVO
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_jugador:
		mov AL, JUGADOR
		mov [elemento_actual], AL
		jmp continuar_parseo0
		;; ignorar espacios
continuar_parseo0:
		pop SI         ; ignorara valor inicial de DI
		mov AL, [DI]
		cmp AL, 20
		jne ciclo_lineas
		call ignorar_espacios
		;; obtener una cadena numérica
		call leer_cadena_numerica
		push DI
		mov DI, offset numero
		call cadenaAnum
		mov [xElemento], AL
		pop DI
		;; ignorar espacios
		mov AL, [DI]
		cmp AL, 20
		je continuar_parseo1
		cmp AL, ','
		je continuar_parseo2
		jmp ciclo_lineas
continuar_parseo1:
		;; ignorar espacios
		call ignorar_espacios
continuar_parseo2:
		;; obtener una coma
		mov SI, offset tk_coma
		call cadena_igual
		cmp DL, 0ff
		jne ciclo_lineas
		;; ignorar espacios
		mov AL, [DI]
		cmp AL, 20
		jne ciclo_lineas
		call ignorar_espacios
		;; obtener una cadena numérica
		call leer_cadena_numerica
		push DI
		mov DI, offset numero
		call cadenaAnum
		mov [yElemento], AL
		pop DI
		;; ignorar_espacios
		mov AL, [DI]
		cmp AL, 20
		jne ver_final_de_linea
		call ignorar_espacios
		;; ver si es el final de la cadena
ver_final_de_linea:
		mov AL, [DI]
		cmp AL, 00
		jne ciclo_lineas
		;; usar la información
		;;
		mov DL, [elemento_actual]
		mov AH, [xElemento]
		mov AL, [yElemento]
		call colocar_en_mapa
		mov AL, JUGADOR
		cmp AL, [elemento_actual]
		je guardar_coordenadas_jugador
		jmp ciclo_lineas
guardar_coordenadas_jugador:
		mov AH, [xElemento]
		mov AL, [yElemento]
		mov [xJugador], AH
		mov [yJugador], AL
		jmp ciclo_lineas
		;;;;;;;;;;;;;;;;;;;;;;;
fin_parseo:
		;; cerrar archivo
		mov AH, 3e
		mov BX, [handle_nivel]
		int 21
		;;
		int 03
		jmp ciclo_juego
		jmp fin

;; pintar_pixel - pintar un pixel
pintar_pixel:
		push AX
		push BX
		push CX
		push DX
		push DI
		push SI
		push DS
		mov DX, 0a000
		mov DS, DX
		;; (
		;; 	posicionarse en X
		mov SI, AX
		mov AX, 140
		mul BX
		add AX, SI
		mov DI, AX
		;;
		mov [DI], CL  ;; pintar
		;; )
		pop DS
		pop SI
		pop DI
		pop DX
		pop CX
		pop BX
		pop AX
		ret

;; pintar_sprite - pinta un sprite
pintar_sprite:
		push DI
		push SI
		push AX
		push BX
		push CX
		inc SI
		mov DH, [SI]  ;; vertical
		dec SI        ;; dirección de tam horizontal
		;;
inicio_pintar_fila:
		cmp DH, 00
		je fin_pintar_sprite
		push AX
		mov DL, [SI]
pintar_fila:
		cmp DL, 00
		je pintar_siguiente_fila
		mov CL, [DI]
		call pintar_pixel
		inc AX
		inc DI
		dec DL
		jmp pintar_fila
pintar_siguiente_fila:
		pop AX
		inc BX
		dec DH
		jmp inicio_pintar_fila
fin_pintar_sprite:
		pop CX
		pop BX
		pop AX
		pop SI
		pop DI
		ret

;; delay - subrutina de retardo
delay:
		push SI
		push DI
		mov SI, 0200
cicloA:
		mov DI, 0130
		dec SI
		cmp SI, 0000
		je fin_delay
cicloB:
		dec DI
		cmp DI, 0000
		je cicloA
		jmp cicloB
fin_delay:
		pop DI
		pop SI
		ret
		

;; clear_pantalla - limpia la pantalla
clear_pantalla:
		mov CX, 19  ;; 25
		mov BX, 00
clear_v:
		push CX
		mov CX, 28  ;; 40
		mov AX, 00
clear_h:
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		add AX, 08
		loop clear_h
		add BX, 08
		pop CX
		loop clear_v
		ret
;;Pedir archivo del nivel
pedir_archivo:
		call clear_pantalla
		mov AL, 0
		mov DL, 0d
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		mov DX, offset cargar_nivel
		mov AH, 09
		int 21
		mov DX, offset linea_nuev
		mov AH, 09
		int 21

		mov DL, 03
		mov DH, 08
		mov BH, 00
		mov AH, 02
		int 10
		
		mov DX, offset presionar_tecla
		mov AH, 09
		int 21
pedir_nuevo_nombre:
		mov DL, 08
		mov DH, 08
		add DH, 03
		mov BH, 00
		mov AH, 02
		int 10
		;
		mov DX, offset prompt_nivel
		mov AH, 09
		int 21
		;
		mov DX, offset buffer_nivel
		mov AH, 0a
		int 21
		;
		mov DI, offset buffer_nivel
		inc DI
		mov AL, [DI]
		cmp AL, 00
		je pedir_nuevo_nombre
		cmp AL, 20
		jb aceptar_tamanio
		mov DX, offset linea_nuev
		mov AH, 09
		int 21
		jmp pedir_nuevo_nombre
aceptar_tamanio:
		mov SI, offset nivel_nombre
		mov DI, offset buffer_nivel
		inc DI
		mov CH, 00
		mov CL, [DI]
		inc DI
duplicar_nombre:
		mov AL, [DI]
		mov [SI], AL
		inc SI
		inc DI
		loop duplicar_nombre
		mov DX, offset linea_nuev
		mov AH, 09
		int 21
buscar_archivo:
		mov CX, 26
		mov DX, offset nivel_nombre
		mov AH, 40
		int 21
cargar_un_nivel_x:
		mov AL, 00
		mov DX, offset nivel_nombre
		mov AH, 3d
		int 21
		jc inicio
		mov [handle_nivel], AX
		jmp ciclo_lineas
retornado:
		ret
;; menu_principal - menu principal
menu_principal:
		call clear_pantalla
		mov AL, 0
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AL, 5
		mov [maximo], AL
		mov AX, 50
		mov BX, 28
		mov [xFlecha], AX
		mov [yFlecha], BX
		;; IMPRIMIR OPCIONES ;;
		;;;; INICIAR JUEGO
		mov DL, 0c
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset iniciar_juego
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CARGAR NIVEL
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset cargar_nivel
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; PUNTAJES ALTOS
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset puntajes
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CONFIGURACION
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset configuracion
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; SALIR
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset salir
		mov AH, 09
		int 21
		pop DX
		;;;;
		call pintar_flecha
		;;;;
		;; LEER TECLA
		;;;;
entrada_menu_principal:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_principal
		cmp AH, 50
		je sumar_opcion_menu_principal
		cmp AH, 3b  ;; le doy F1
		je fin_menu_principal
		jmp entrada_menu_principal
restar_opcion_menu_principal:
		mov AL, [opcion]
		dec AL
		cmp AL, 0ff
		je volver_a_cero
		mov [opcion], AL
		jmp mover_flecha_menu_principal
sumar_opcion_menu_principal:
		mov AL, [opcion]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximo
		mov [opcion], AL
		jmp mover_flecha_menu_principal
volver_a_cero:
		mov AL, 0
		mov [opcion], AL
		jmp mover_flecha_menu_principal
volver_a_maximo:
		mov AL, [maximo]
		dec AL
		mov [opcion], AL
		jmp mover_flecha_menu_principal
mover_flecha_menu_principal:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 50
		mov BX, 28
		mov CL, [opcion]
ciclo_ubicar_flecha_menu_principal:
		cmp CL, 0
		je pintar_flecha_menu_principal
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_principal
pintar_flecha_menu_principal:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_principal
		;;
fin_menu_principal:
		ret

;; menu_pausa - menu pausa
menu_pausa:
		call clear_pantalla
		mov AL, 0
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AL, 2
		mov [maximo], AL
		mov AX, 50
		mov BX, 28
		mov [xFlecha], AX
		mov [yFlecha], BX
		;; IMPRIMIR OPCIONES ;;
		;;;; CONTINUAR
		mov DL, 0c
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset continuar_juego
		mov AH, 09
		int 21
		pop DX
		;;
		;;;;  SALIR
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset regreso_menu
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; 
		;;;;
		call pintar_flecha
		;;;;
		;; LEER TECLA
		;;;;
entrada_menu_pausa:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_pausa
		cmp AH, 50
		je sumar_opcion_menu_pausa
		cmp AH, 3b  ;; le doy F1
		je fin_menu_pausa
		jmp entrada_menu_pausa
restar_opcion_menu_pausa:
		mov AL, [opcion]
		dec AL
		cmp AL, 0ff
		je volver_a_cero_pausa
		mov [opcion], AL
		jmp mover_flecha_menu_pausa
sumar_opcion_menu_pausa:
		mov AL, [opcion]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximo_pausa
		mov [opcion], AL
		jmp mover_flecha_menu_pausa
volver_a_cero_pausa:
		mov AL, 0
		mov [opcion], AL
		jmp mover_flecha_menu_pausa
volver_a_maximo_pausa:
		mov AL, [maximo]
		dec AL
		mov [opcion], AL
		jmp mover_flecha_menu_pausa
mover_flecha_menu_pausa:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 50
		mov BX, 28
		mov CL, [opcion]
ciclo_ubicar_flecha_menu_pausa:
		cmp CL, 0
		je pintar_flecha_menu_pausa
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_pausa
pintar_flecha_menu_pausa:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_pausa
		;;
fin_menu_pausa:
		ret
;;
;;
;; pintar_flecha - pinta una flecha
pintar_flecha:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_flcha
		mov DI, offset data_sprite_flcha
		call pintar_sprite
		ret
ciclo_cambios_teclas:
cambio_direccion_der:
		call clear_pantalla
		mov AL, 0
		mov DL, 08
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10

		mov DX, offset tecla
		mov AH, 09
		int 21

		mov DL, 08
		mov DH, 08
		mov BH, 00
		mov AH, 02
		int 10

		mov DX, offset tecla_derecha
		mov AH, 09
		int 21

		mov DL, 0c
		mov DH, 08
		mov BH, 00
		mov AH, 02
		int 10

		mov AH, 10
		int 16
		mov control_der, AL
		mov control_derecha, AH
cambio_direccion_aba:
		call clear_pantalla
		mov AL, 0
		mov DL, 08
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10

		mov DX, offset tecla
		mov AH, 09
		int 21

		mov DL, 08
		mov DH, 08
		mov BH, 00
		mov AH, 02
		int 10

		mov DX, offset tecla_abajo
		mov AH, 09
		int 21

		mov DL, 0c
		mov DH, 08
		mov BH, 00
		mov AH, 02
		int 10

		mov AH, 00
		int 16
		mov control_aba, AL
		mov control_abajo, AH
cambio_direccion_arr:
		call clear_pantalla
		mov AL, 0
		mov DL, 08
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10

		mov DX, offset tecla
		mov AH, 09
		int 21

		mov DL, 08
		mov DH, 08
		mov BH, 00
		mov AH, 02
		int 10

		mov DX, offset tecla_arriba
		mov AH, 09
		int 21

		mov DL, 0c
		mov DH, 08
		mov BH, 00
		mov AH, 02
		int 10

		mov DL,08
		mov DH, 08
		add DH, 00
		mov BH, 00
		mov AH, 02
		int 10

		mov AH, 00
		int 16
		mov control_arr, AL
		mov control_arriba, AH
cambio_direccion_izq:
		call clear_pantalla
		mov AL, 0
		mov DL, 08
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10

		mov DX, offset tecla
		mov AH, 09
		int 21

		mov DL, 08
		mov DH, 08
		mov BH, 00
		mov AH, 02
		int 10

		mov DX, offset tecla_izquierda
		mov AH, 09
		int 21

		mov DL, 0c
		mov DH, 08
		mov BH, 00
		mov AH, 02
		int 10

		mov AH, 00
		int 16
		mov control_izq, AL
		mov control_izquierda, AH
fin_ciclos_cambios:
		jmp menu_configuracion
;Menu Configuracion
menu_configuracion:
		call pintar_menu_configuracion
		mov AL, [opcion]
		;; > Cabmio
		cmp AL, 0
		je ciclo_cambios_teclas
		;; >Regresar
		cmp AL, 1
		je inicio
pintar_menu_configuracion:
		call clear_pantalla
		mov AL, 0
		mov [opcion], AL
		mov AL, 2
		mov [maximo], AL
		mov AX, 50
		mov BX, 80
		mov [xFlecha], AX
		mov [yFlecha], BX
		;; IMPRIMIR OPCIONES ;;
		mov DL, 5c
		mov DH, 03
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset actuales
		mov AH, 09
		int 21
		pop DX
		;;
		mov DL, 09
		mov DH, 06
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset actual_arriba
		mov AH, 09
		int 21
		pop DX

		mov DL, 10
		add DL, 04
		mov DH, 06
		mov BH, 00
		mov AH, 02
		int 10

		cmp control_arriba, 48
		je metodo_control_arr

		mov DX, offset control_arr
		mov AH, 40h
		mov BX, 01
		mov CX, 0001
		int 21
actual_control_aba:
		mov DL, 09
		mov DH, 08
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset actual_abajo
		mov AH, 09
		int 21
		pop DX

		mov DL, 10
		add DL, 04
		mov DH, 08
		mov BH, 00
		mov AH, 02
		int 10

		cmp control_abajo, 50
		je metodo_control_aba

		mov DX, offset control_aba
		mov AH, 40h
		mov BX, 01
		mov CX, 0001
		int 21
actual_control_izq:
		mov DL, 09
		mov DH, 08
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset actual_izquierda
		mov AH, 09
		int 21
		pop DX

		mov DL, 10
		add DL, 04
		mov DH, 08
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10

		cmp control_izquierda, 4b
		je metodo_control_izq

		mov DX, offset control_izq
		mov AH, 40h
		mov BX, 01
		mov CX, 0001
		int 21
actual_control_der:
		mov DL, 09
		mov DH, 08
		add DH, 04
		mov BH, 00
		mov AH, 02
		int 10

		push DX
		mov DX, offset actual_derecha
		mov AH, 09
		int 21
		pop DX

		mov DL, 10
		add DL, 04
		mov DH, 08
		add DH, 04
		mov BH, 00
		mov AH, 02
		int 10

		cmp control_derecha, 4d
		je metodo_control_der

		mov DX, offset control_der
		mov AH, 40h
		mov BX, 01
		mov CX, 0001
		int 21

seleccionar_opcion:
		mov DL, 0c
		mov DH, 08
		mov BH, 00
		mov AH, 02
		int 10

		add DH,08
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset cambiar_controles
		mov AH, 09
		int 21
		pop DX

		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset regreso_menu
		mov AH, 09
		int 21
		pop DX

		call pintar_flecha_menu_configuracion
entrada_menu_configuracion:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_configuracion
		cmp AH, 50
		je sumar_opcion_menu_configuracion
		cmp AH, 3b  ;; le doy F1
		je fin_menu_configuracion
		jmp entrada_menu_configuracion
restar_opcion_menu_configuracion:
		mov AL, [opcion]
		dec AL
		cmp AL, 0ff
		je volver_a_cero_configuracion
		mov [opcion], AL
		jmp mover_flecha_menu_configuracion
sumar_opcion_menu_configuracion:
		mov AL, [opcion]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximo_configuracion
		mov [opcion], AL
		jmp mover_flecha_menu_configuracion
volver_a_cero_configuracion:
		mov AL, 0
		mov [opcion], AL
		jmp mover_flecha_menu_configuracion
volver_a_maximo_configuracion:
		mov AL, [maximo]
		dec AL
		mov [opcion], AL
		jmp mover_flecha_menu_configuracion
mover_flecha_menu_configuracion:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 50
		mov BX, 80
		mov CL, [opcion]
ciclo_ubicar_flecha_menu_configuracion:
		cmp CL, 0
		je pintar_flecha_menu_configuracion
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_configuracion
pintar_flecha_menu_configuracion:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_configuracion
		;;
fin_menu_configuracion:
		ret



;; adaptar_coordenada - 40x25->320x200
;; ENTRADA:
;;    AH -> x 40x25
;;    AL -> y 40x25
;; SALIDA:
;;    AX -> x 320x200
;;    BX -> y 320x200
adaptar_coordenada:
		mov DL, 08
		mov CX, AX
		mul DL
		mov BX, AX
		;;
		mov AL, CH
		mul DL
		ret
		
;; colocar_en_mapa - coloca un elemento en el mapa
colocar_en_mapa:
		mov CX, AX     ;;;   AH -> x -> CH
		mov BL, 28
		mul BL   ;; AL * BL  = AX
		mov CL, CH
		mov CH, 00     ;;; CX el valor de X completo
		add AX, CX
		mov DI, offset mapa
		add DI, AX
		mov [DI], DL
		ret


;; obtener_de_mapa - obtiene un elemento en el mapa
obtener_de_mapa:
		mov CX, AX
		mov BL, 28
		mul BL
		mov CL, CH
		mov CH, 00
		add AX, CX
		mov DI, offset mapa
		add DI, AX
		mov DL, [DI]
		ret


;; pintar_mapa - pinta los elementos del mapa
;; ENTRADA:
;; SALIDA:
pintar_mapa:
		mov AL, 01   ;; fila
		;;
ciclo_v:
		cmp AL, 18
		je fin_pintar_mapa
		mov AH, 00   ;; columna
		;;
ciclo_h:
		cmp AH, 28
		je continuar_v
		push AX
		call obtener_de_mapa
		pop AX
		;;
                cmp DL, NADA
		je pintar_vacio_mapa
		;;
                cmp DL, JUGADOR
		je pintar_jugador_mapa
		;;
                cmp DL, PARED
		je pintar_pared_mapa
		;;
                cmp DL, CAJA
		je pintar_caja_mapa
		;;
                cmp DL, OBJETIVO
		je pintar_objetivo_mapa
		;;
                cmp DL, SUELO
		je pintar_suelo_mapa
		;;
		jmp continuar_h
pintar_vacio_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_suelo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_suelo
		mov DI, offset data_sprite_suelo
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_jugador_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_jug
		mov DI, offset data_sprite_jug
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_pared_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_pared
		mov DI, offset data_sprite_pared
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_caja_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_caja
		mov DI, offset data_sprite_caja
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_objetivo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_obj
		mov DI, offset data_sprite_obj
		call pintar_sprite
		pop AX
		jmp continuar_h
continuar_h:
		inc AH
		jmp ciclo_h
continuar_v:
		inc AL
		jmp ciclo_v
fin_pintar_mapa:
		ret


;; mapa_quemado - mapa de prueba
mapa_quemado:
		mov DL, SUELO
		mov AH, 2
		mov AL, 2
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 2
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 2
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 2
		mov AL, 4
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 4
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 4
		call colocar_en_mapa
		;;
		mov DL, JUGADOR
		mov AH, [xJugador]
		mov AL, [yJugador]
		call colocar_en_mapa
		;;
		mov DL, CAJA
		mov AH, 2
		mov AL, 3
		call colocar_en_mapa
		;;
		mov DL, OBJETIVO
		mov AH, 4
		mov AL, 2
		call colocar_en_mapa
		;;
		mov DL, PARED
		mov AH, 1
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 2
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 3
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 4
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 3
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 3
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 4
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 4
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 5
		call colocar_en_mapa

		mov DL, PARED
		mov AH, 2
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 3
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 4
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 5
		call colocar_en_mapa
		ret

mostrar_letras:
		mov DL, 0
		mov DH, 18
		mov BH, 00
		mov AH, 02
		int 10
		;;
		push DX
		mov DX, offset iniciales
		mov AH, 09
		int 21
		pop DX

		mov DL, 1F
		mov DH, 18
		mov BH, 00
		mov AH, 02
		int 10
		;;
		push DX
		mov DX, offset contador_tiempo
		mov AH, 09
		int 21
		pop DX

		mov DL, 23
		mov DH, 00
		mov BH, 00
		mov AH, 02
		int 10
		;;
		push DX
		mov DX, offset contador_puntaje
		mov AH, 09
		int 21
		pop DX

;; entrada_juego - manejo de las entradas del juego
entrada_juego:
		mov AH, 01
		int 16
		jz fin_entrada_juego  ;; nada en el buffer de entrada
		mov AH, 00
		int 16
		;; AH <- scan code
		cmp AH, [control_arriba]
		je mover_jugador_arr
		cmp AH, [control_abajo]
		je mover_jugador_aba
		cmp AH, [control_izquierda]
		je mover_jugador_izq
		cmp AH, [control_derecha]
		je mover_jugador_der
		cmp AH, 3c
		je pintar_menu_pausa
		ret
pintar_menu_pausa:
		call menu_pausa
		mov AL, [opcion]
		cmp AL, 0
		je pintar_mapa
		cmp AL, 1
		je inicio
		ret
;Mover Jugardor Arriba
mover_jugador_arr:
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AL
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp bandera,1
		je colocar_equis_arr
		cmp DL, PARED
		je hay_pared_general
		cmp DL, CAJA
		je mover_objeto_arr
		cmp DL, OBJETIVO
		je mover_equis_arr
		mov [yJugador], AL
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		inc AL
		call colocar_en_mapa
		ret
;;Coloca al jugador donde hay objetvio
mover_equis_arr:
		mov bandera, 1
		mov DL, JUGADOR
		mov [yJugador], AL
		push AX
		call colocar_en_mapa
		pop AX
		mov DL, SUELO
		inc AL 
		call colocar_en_mapa
		ret
;;Colocar objetivo atras del jugador
colocar_equis_arr:
		cmp DL, CAJA
		je colocar_cajax_arr
		cmp DL, PARED
		je hay_pared_general
		mov DL, JUGADOR
		mov [yJugador], AL
		push AX
		call colocar_en_mapa
		pop AX
		mov DL, OBJETIVO
		inc AL
		call colocar_en_mapa
		mov bandera_caja, 0
		mov bandera, 0
		ret
;Colocar Objetivo si hay caja enfrente 
colocar_cajax_arr:
		dec AL
    	push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa arriba de la caja
		cmp DL, PARED
		je hay_pared_general
		cmp DL, CAJA
		je hay_pared_general
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, JUGADOR
		inc AL
		mov [yJugador], AL
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, OBJETIVO
		inc AL
		call colocar_en_mapa
		mov bandera,0
		ret
;;Detencion de movimiento general
hay_pared_general:
		ret
;Mueve Caja Arriba
mover_objeto_arr:
		dec AL
    	push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa arriba de la caja
		cmp DL, PARED
		je hay_pared_general
		cmp DL, CAJA
		je hay_pared_general
		cmp DL, OBJETIVO
		je activar_bandera_caja_arr
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, JUGADOR
		inc AL
		mov [yJugador], AL
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, SUELO
		inc AL
		call colocar_en_mapa
		cmp bandera_caja, 1
		je activar_bandera
		ret
;Activa Bool para que pinte objetivo atras
activar_bandera:
		mov bandera, 1
		mov bandera_caja, 0
		ret
;Si caja toca objetivo se guarda
activar_bandera_caja_arr:
		mov bandera_caja, 1
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, JUGADOR
		inc AL
		mov [yJugador], AL
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, SUELO
		inc AL
		call colocar_en_mapa
		ret
mover_jugador_aba:
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AL
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp bandera,1
		je colocar_equis_aba
		cmp DL, PARED
		je hay_pared_general
		cmp DL, CAJA
		je mover_objeto_aba
		cmp DL, OBJETIVO
		je mover_equis_aba
		mov [yJugador], AL
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		dec AL
		call colocar_en_mapa
		ret
mover_equis_aba:
		mov bandera, 1

		mov DL, JUGADOR
		mov [yJugador], AL
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, SUELO
		dec AL 
		call colocar_en_mapa

		ret
colocar_equis_aba:
		cmp DL, CAJA
		je colocar_cajax_aba
		cmp DL, PARED
		je hay_pared_general
		mov DL, JUGADOR
		mov [yJugador], AL
		push AX
		call colocar_en_mapa
		pop AX
		mov DL, OBJETIVO
		dec AL
		call colocar_en_mapa
		mov bandera_caja, 0
		mov bandera, 0
		ret
colocar_cajax_aba:
		inc AL
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_general
		cmp DL, CAJA
		je hay_pared_general
		;;
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, JUGADOR
		dec AL
		mov [yJugador], AL
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, OBJETIVO
		dec AL
		call colocar_en_mapa
		mov bandera, 0
		ret
mover_objeto_aba:
		inc AL
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_general
		cmp DL, CAJA
		je hay_pared_general
		cmp DL, OBJETIVO
		je activar_bandera_caja_aba
		;;
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, JUGADOR
		dec AL
		mov [yJugador], AL
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		dec AL
		call colocar_en_mapa
		cmp bandera_caja, 1
		je activar_bandera
		ret
activar_bandera_caja_aba:
		mov bandera_caja, 1
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, JUGADOR
		dec AL
		mov [yJugador], AL
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		dec AL
		call colocar_en_mapa
		ret
mover_jugador_izq:
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AH
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp bandera,1
		je colocar_equis_izq
		cmp DL, PARED
		je hay_pared_general
		cmp DL, CAJA
		je mover_objeto_izq
		cmp DL, OBJETIVO
		je mover_equis_izq
		mov [xJugador], AH
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		inc AH
		call colocar_en_mapa
		ret
mover_equis_izq:
		mov bandera, 1

		mov DL, JUGADOR
		mov [xJugador], AH
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, SUELO
		inc AH
		call colocar_en_mapa

		ret
colocar_equis_izq:
		cmp DL, CAJA
		je colocar_cajax_izq
		cmp DL, PARED
		je hay_pared_general
		mov DL, JUGADOR
		mov [xJugador], AH
		push AX
		call colocar_en_mapa
		pop AX
		mov DL, OBJETIVO
		inc AH
		call colocar_en_mapa
		mov bandera_caja, 0
		mov bandera, 0
		ret
colocar_cajax_izq:
		dec AH
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en el mapa a la izquierda de la caja
		cmp DL, PARED
		je hay_pared_general
		cmp DL, CAJA
		je hay_pared_general
		;; Empujar la caja
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, JUGADOR
		inc AH
		mov [xJugador], AH
		push AX
		call colocar_en_mapa
		pop AX
		
		mov DL, OBJETIVO
		inc AH
		call colocar_en_mapa
		mov bandera, 0
		ret
mover_objeto_izq:
		dec AH
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en el mapa a la izquierda de la caja
		cmp DL, PARED
		je hay_pared_general
		cmp DL, CAJA
		je hay_pared_general
		cmp DL, OBJETIVO
		je activar_bandera_caja_izq
		;; Empujar la caja
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, JUGADOR
		inc AH
		mov [xJugador], AH
		push AX
		call colocar_en_mapa
		pop AX
		
		mov DL, SUELO
		inc AH
		call colocar_en_mapa
		cmp bandera_caja, 1
		je activar_bandera
		ret
activar_bandera_caja_izq:
		mov bandera_caja, 1
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, JUGADOR
		inc AH
		mov [xJugador], AH
		push AX
		call colocar_en_mapa
		pop AX
		
		mov DL, SUELO
		inc AH
		call colocar_en_mapa
		ret
mover_jugador_der:
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AH
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp bandera,1
		je colocar_equis_der
		cmp DL, PARED
		je hay_pared_general
		cmp DL, CAJA
		je mover_objeto_der
		cmp DL, OBJETIVO
		je mover_equis_der
		mov [xJugador], AH
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		dec AH
		call colocar_en_mapa
		ret
mover_equis_der:
		mov bandera, 1

		mov DL, JUGADOR
		mov [xJugador], AH
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, SUELO
		dec AH
		call colocar_en_mapa

		ret
colocar_equis_der:
		cmp DL, CAJA
		je colocar_cajax_der
		cmp DL, PARED
		je hay_pared_general
		mov DL, JUGADOR
		mov [xJugador], AH
		push AX
		call colocar_en_mapa
		pop AX
		mov DL, OBJETIVO
		dec AH
		call colocar_en_mapa
		mov bandera_caja, 0
		mov bandera, 0
		ret
colocar_cajax_der:
		inc AH
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en el mapa a la izquierda de la caja
		cmp DL, PARED
		je hay_pared_general
		cmp DL, CAJA
		je hay_pared_general
		;; Empujar la caja
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, JUGADOR
		dec AH
		mov [xJugador], AH
		push AX
		call colocar_en_mapa
		pop AX
		
		mov DL, OBJETIVO
		dec AH
		call colocar_en_mapa
		mov bandera, 0
		ret

mover_objeto_der:
		inc AH
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en el mapa a la derecha de la caja
		cmp DL, PARED
		je hay_pared_general
		cmp DL, CAJA
		je hay_pared_general
		cmp DL, OBJETIVO
		je activar_bandera_caja_der
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, JUGADOR
		dec AH
		mov [xJugador], AH
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, SUELO
		dec AH
		call colocar_en_mapa
		cmp bandera_caja, 1
		je activar_bandera
		ret
activar_bandera_caja_der:
		mov bandera_caja, 1
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, JUGADOR
		dec AH
		mov [xJugador], AH
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, SUELO
		dec AH
		call colocar_en_mapa
		ret
fin_entrada_juego:
		ret


;; siguiente_linea - extrae la siguiente línea del archivo referenciado por el handle en BX
;; ENTRADA:
siguiente_linea:
		mov SI, 0000
		mov DI, offset linea
		;;
ciclo_sig_linea:
		mov AH, 3f
		mov CX, 0001
		mov DX, DI
		int 21
		cmp AX, 0000
		je fin_siguiente_linea
		mov AL, [DI]
		cmp AL, 0a
		je quitar_nl_y_fin
		inc SI
		inc DI
		jmp ciclo_sig_linea
quitar_nl_y_fin:
		mov AL, 00
		mov [DI], AL
		mov DX, SI
		mov DH, DL
		mov DL, 00    ;; no ha finalizado el archivo
		ret
fin_siguiente_linea:
		mov DL, 0ff   ;; ya finalizó el archivo
		ret


;; cadena_igual - verifica que dos cadenas sean iguales
;; ENTRADA:
cadena_igual:
		mov CH, 00
		mov CL, [SI]
		inc SI
ciclo_cadena_igual:
		mov AL, [SI]
		cmp AL, [DI]
		jne fin_cadena_igual
		inc SI
		inc DI
		loop ciclo_cadena_igual
cadenas_son_iguales:
		mov DL, 0ff
		ret
fin_cadena_igual:
		mov DL, 00
		ret


;; ignorar_espacios - ignora una sucesión de espacios
;; ENTRADA:
ignorar_espacios:
ciclo_ignorar:
		mov AL, [DI]
		cmp AL, 20
		jne fin_ignorar
		inc DI
		jmp ciclo_ignorar
fin_ignorar:
		ret


;; memset - memset
;; ENTRADA:
memset:
		push DI
ciclo_memset:
		mov [DI], AL
		inc DI
		loop ciclo_memset
		pop DI
		ret


;; leer_cadena_numerica - lee una cadena que debería estar compuesta solo de números
;; ENTRADA:
leer_cadena_numerica:
		mov SI, DI
		;;
		mov DI, offset numero
		mov CX, 0005
		mov AL, 30
		call memset
		;;
		mov DI, SI
		mov CX, 0000
ciclo_ubicar_ultimo:
		mov AL, [DI]
		cmp AL, 30
		jb copiar_cadena_numerica
		cmp AL, 39
		ja copiar_cadena_numerica
		inc DI
		inc CX
		jmp ciclo_ubicar_ultimo
copiar_cadena_numerica:
		push DI   ;;   <----
		dec DI
		;;
		mov SI, offset numero
		add SI, 0004
ciclo_copiar_num:
		mov AL, [DI]
		mov [SI], AL
		dec DI
		dec SI
		loop ciclo_copiar_num
		pop DI
		ret

;; cadenaAnum
;; ENTRADA:
cadenaAnum:
		mov AX, 0000    ; inicializar la salida
		mov CX, 0005    ; inicializar contador
		;;
seguir_convirtiendo:
		mov BL, [DI]
		cmp BL, 00
		je retorno_cadenaAnum
		sub BL, 30      ; BL es el valor numérico del caracter
		mov DX, 000a
		mul DX          ; AX * DX -> DX:AX
		mov BH, 00
		add AX, BX 
		inc DI          ; puntero en la cadena
		loop seguir_convirtiendo
retorno_cadenaAnum:
		ret

metodo_control_arr:
		mov DL, 10
		add DL, 04
		mov DH, 06
		mov BH, 00
		mov AH, 02
		int 10
		mov DX, offset flechita_arr
		mov AH, 09
		int 21
	jmp actual_control_aba
metodo_control_aba:
		mov DL, 10
		add DL, 04
		mov DH, 08
		mov BH, 00
		mov AH, 02
		int 10
		mov DX, offset flechita_ab
		mov AH, 09
		int 21
		jmp actual_control_izq
metodo_control_izq:
		mov DL, 10
		add DL, 04
		mov DH, 08
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		mov DX, offset flechita_izq
		mov AH, 09
		int 21
		jmp actual_control_der
metodo_control_der:
		mov DX, offset flechita_der
		mov AH, 09
		int 21
		jmp seleccionar_opcion
fin:
.EXIT
END
