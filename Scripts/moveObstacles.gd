extends KinematicBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var speed = -globalVariable.walkVelocity
	
	if global_position.x <= -960:
		global_position.x = 4800

	global_position.x += speed * delta
