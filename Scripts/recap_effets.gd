extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with functi"res://Scripts/récap_potions_effets.tscn"on body.

var effet = {e1="soin",e2="poison",e3="sommeil", e4="force", e5="croissance", e6="hydratation", e7="oubli", e8="vision de nuit"}

func concatenation (var effet): 
	var res
	res = "Potion de "+ effet
	return res
	

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
