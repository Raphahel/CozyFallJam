extends Node2D


var ingredient_name : String


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var speed = -globalVariable.walkVelocity
	
	if global_position.x <= -960:
		queue_free()

	global_position.x += speed * delta


func update_var(var name):
	ingredient_name = name


func _on_Area2D_body_entered(body):
	pass


func _on_Area2D_area_entered(area):
	print(area.name)
	if area.name == "InteractionChat":
		globalVariable.inventory[self.ingredient_name] += 1
		queue_free()
