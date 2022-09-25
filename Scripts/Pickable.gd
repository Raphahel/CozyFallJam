extends Control

#Classe générale permet de donner l'impresseon de déplacer l'objet. Ne vérifie rien d'autre devra être adapter par objet


const DRAGPREVIEW = preload("res://Scenes/DragPreview.tscn")

func _ready():
	$Texture/Modulate.texture = $Texture.texture
	$Texture/Modulate.visible = false
	$Texture/Modulate.modulate = Color(0,0,0,25)

func get_drag_data(position):
	
	var drag_preview = DRAGPREVIEW.instance()
	drag_preview.texture = $Texture.texture
	$Texture/Modulate.visible = true
	add_child(drag_preview)
	pass

func _process(delta):
	if Input.is_action_just_released("left_click"):
		$Texture/Modulate.visible = false
