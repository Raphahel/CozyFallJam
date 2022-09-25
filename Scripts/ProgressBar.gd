extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$ProgressBar.value = globalVariable.anxietyLevel


func _on_Timer_timeout():
	if globalVariable.player_is_in_walk_scene:
		if $ProgressBar.value == 0:
			globalVariable.player_is_in_walk_scene = false
			globalVariable.anxietyLevel = $ProgressBar.value
			get_tree().change_scene("res://Scenes/CraftingScreen.tscn")

		else:
			$ProgressBar.value -= 2
	else:
		if $ProgressBar.value == globalVariable.maxAnxietyLevel:
			globalVariable.player_is_in_walk_scene = true
			globalVariable.anxietyLevel = $ProgressBar.value
			get_tree().change_scene("res://Scenes/WalkScene.tscn")

		else:
			$ProgressBar.value += 1
