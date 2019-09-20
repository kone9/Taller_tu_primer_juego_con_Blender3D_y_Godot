extends MeshInstance

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_area_detectar_body_entered(body):# si entro al area
	if body.is_in_group("pelota"):# si ese cuerpo esta en el grupo pelota
		get_tree().get_nodes_in_group("escena_principal")[0].puntaje += 1 #sumo un punto cada ves que entra adentro de un cubo la pelota
		get_tree().get_nodes_in_group("coint")[0].play()
		queue_free() #elimina el objeto
