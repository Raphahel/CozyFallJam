extends "res://Scripts/Pickable.gd"

export var ingredient_name : String = "Blue Mushroom"
export var texture : Texture
var effects = []
#var scarcity : int
const DRAGPREVIEWING = preload("res://Scenes/DragPreviewIngredients.tscn")


func _ready():
	effects = globalVariable.ingredient_effects[ingredient_name]
	$Texture.texture = texture

func get_drag_data(position):
	var data = {}
	data["Name"] = ingredient_name
	data["Effects"] = effects
	data["Texture"] = $Texture.texture
	
	var drag_preview = DRAGPREVIEWING.instance()
	drag_preview.texture = $Texture.texture
	$Texture/Modulate.visible = true
	add_child(drag_preview)
	return data


func _on_Area2D_body_entered(body):
	print(body.name)
	if body.name == "CharacterChat":
		globalVariable.inventory[self.ingredient_name] += 1
		queue_free()
