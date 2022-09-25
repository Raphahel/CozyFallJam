extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/NinePatchRect/Money.text = str(globalVariable.money)

func _on_Timer_timeout():
	$CanvasLayer/NinePatchRect/Money.text = str(globalVariable.money)
