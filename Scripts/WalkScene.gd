extends Node2D

onready var obstacles = [
	preload("res://Scenes/TreeStump.tscn"),
	preload("res://Scenes/rock.tscn"),
	preload("res://Scenes/bush.tscn"),
]


onready var ingredients = {
	"Blue Mushroom":       preload("res://Scenes/Blue Mushroom.tscn"),
	"Red Mushroom":        preload("res://Scenes/Red Mushroom.tscn"),
	"Green Mushroom":      preload("res://Scenes/Green Mushroom.tscn"),
	"Snail" :              preload("res://Scenes/Snail.tscn"),
	"Polka Dot Snail":     preload("res://Scenes/Polka Dot Snail.tscn"),
	"Kilted Snail":        preload("res://Scenes/Kilted Snail.tscn"),
	"Blood Butterfly":     preload("res://Scenes/Blood Butterfly.tscn"),
	"Blue Morpho":         preload("res://Scenes/Blue Morpho.tscn"),
	"Bubblegum Butterfly": preload("res://Scenes/Bubblegum Butterfly.tscn"),
	"Nettle":              preload("res://Scenes/Nettle.tscn"),
	"Blueberry":           preload("res://Scenes/Blueberry.tscn"),
	"Raspberry":           preload("res://Scenes/Raspberry.tscn"),
}


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	itemWaterfall()


func itemWaterfall():
	while true:
		var waiting_time = rand_range(0, 3)

		# Sleep
		yield(get_tree().create_timer(waiting_time), "timeout")

		if randf() > 0.3:
			addRandomObstacle()
		else: pass
		addRandomIngredient()


func addRandomObstacle():
	var i = randi() % len(obstacles)
	
	var obstacle = obstacles[i].instance()

	var pos = Vector2(1920 + 250, rand_range(50, 1080 - 50))
	obstacle.position = pos

	add_child(obstacle)


func addRandomIngredient():
	var ingredients_list = ingredients.keys()

	# Getting a random ingredient name in the list
	var ingredient_name = ingredients_list[randi() % len(ingredients_list)]

	# Intanciating the ingredient and setting its type
	var ingredient = ingredients[ingredient_name].instance()
	ingredient.update_var(ingredient_name)

	# Setting a position
	var pos = Vector2(1920 + 250, rand_range(50, 1080 - 50))
	ingredient.position = pos

	# Updating canvas
	add_child(ingredient)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
