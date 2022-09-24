extends Node2D

var ingredient_name : String
var effects = []
#var scarcity : int


func _init(var ingr_name, var effects_list):
	ingredient_name = ingr_name
 
	
	for effect in effects_list:
		effects.append(effect)


func _on_Area2D_body_entered(body):
	print(body.name)
	if body.name == "CharacterChat":
		queue_free()
