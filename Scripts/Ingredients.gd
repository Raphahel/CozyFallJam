extends Node2D

var name_ing : String
var effect1 = globalVariable.Effects.POISON
var effect2 = globalVariable.Effects.FORGETFULNESS
#var scarcity : int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_body_entered(body):
	print(body.name)
	if body.name == "CharacterChat":
		queue_free()

