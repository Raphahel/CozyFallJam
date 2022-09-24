extends KinematicBody2D

const PLAYER_SPEED = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(_delta):
	var velocity = Vector2.ZERO

	# Move RIGHT
	if Input.is_action_pressed("move_right"):
		velocity.x = PLAYER_SPEED

	# Move LEFT
	if Input.is_action_pressed("move_left"):
		velocity.x = -PLAYER_SPEED

	# Move DOWN
	if Input.is_action_pressed("move_down"):
		velocity.y = PLAYER_SPEED

	# Move UP
	if Input.is_action_pressed("move_up"):
		velocity.y = -PLAYER_SPEED

	move_and_slide(velocity)


