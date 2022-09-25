extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Timer_timeout():
	if globalVariable.player_is_in_walk_scene:
		if $ProgressBar.value == 0:
			get_tree().change_scene("res://Scenes/CraftingScreen.tscn")
			globalVariable.player_is_in_walk_scene = false
		else:
			$ProgressBar.value -= 1
	else:
		if $ProgressBar.value == 0:
			get_tree().change_scene("res://Scenes/WalkScene.tscn")
			globalVariable.player_is_in_walk_scene = true
		else:
			$ProgressBar.value += 1
