extends KinematicBody

var movimiento = Vector3() #variable que posee 3 valores

export (int) var velocidad = 1 #variable de tipo export que se ve en el editor

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	movimiento.y += -1 #representa la gravedad en un cuerpo kinematico
	
	if Input.is_action_pressed("s"):#arriba
		movimiento.z = 1 * velocidad
	if Input.is_action_pressed("w"):#abajo
		movimiento.z = -1 * velocidad
	if Input.is_action_pressed("d"):#derecha
		movimiento.x = 1 * velocidad
	if Input.is_action_pressed("a"):#izquierda
		movimiento.x = -1 * velocidad
	
	#detiene el movimineto
	if Input.is_action_just_released("w") or Input.is_action_just_released("s") or Input.is_action_just_released("a") or Input.is_action_just_released("d"):
		movimiento.z = 0
		movimiento.x = 0
		movimiento.y = 0
		
	#desliza el objeto kinematico por la escena
	move_and_slide(movimiento)#movemos un cuerpo kinematico
	 
	get_tree().get_nodes_in_group("camara")[0].translation.x = self.translation.x + -0.26 #la camara tiene la misma posicion x que la pelota
	get_tree().get_nodes_in_group("camara")[0].translation.z = self.translation.z + 11.427#la camara tiene la misma posicion x que la pelota