extends "res://Scripts/Pickable.gd"

export var ingredient_name : String = "Blue Mushroom"
var effects = []
#var scarcity : int


func _ready():
	print(ingredient_name)
	effects = globalVariable.ingredient_effects[ingredient_name]

func get_drag_data(position):
	var data = {}
	data["Name"] = ingredient_name
	data["Effects"] = effects
	data["Texture"] = $Texture.texture
	return data


func _on_Area2D_body_entered(body):
	print(body.name)
	if body.name == "CharacterChat":
		queue_free()
