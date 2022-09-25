extends Node2D

onready var obstacles = [
	preload("res://Scenes/TreeStump.tscn"),
	preload("res://Scenes/rock.tscn"),
	preload("res://Scenes/bush.tscn"),
]


# Called when the node enters the scene tree for the first time.
func _ready():
	itemWaterfall()


func itemWaterfall():
	while true:
		var waiting_time = rand_range(1, 4) + randf()

		# Sleep
		yield(get_tree().create_timer(waiting_time), "timeout")

		addRandomSprite()


func addRandomSprite():
	var i = rand_range(0, 3)
	
	var obstacle = obstacles[i].instance()

	var pos = Vector2(1920 + 250, rand_range(50, 1080 - 50))
	obstacle.position = pos

	add_child(obstacle)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
