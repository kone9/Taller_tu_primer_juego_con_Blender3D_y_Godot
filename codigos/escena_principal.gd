extends Spatial

var puntaje = 0
var sonido_aplausos = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):#esta funcion se llama 60 veces por segundo
	
	#hace el boton visible e invisible ya que ganaste y tienes que reiniciar la escena
	if puntaje == 10:
		$boton_Reiniciar.visible = true
	else:
		$boton_Reiniciar.visible = false
	
	if puntaje == 10 and sonido_aplausos == false:
		sonido_aplausos = true
		$ganaste.playing = true#activar aplausos
		$musica.stop()#detener la musica"""
	
	#esto aumenta el puntaje	
	$puntaje.text = "puntaje = " + str(puntaje) #cambio el puntaje






func _on_Button_button_down():
	get_tree().reload_current_scene()#reinicia la escena
