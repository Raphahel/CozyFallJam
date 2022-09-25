extends "res://Scripts/Pickable.gd"

var prix = 0
var effet = ""
var nom = "" 
var superieur = false
var effets = {e1="soin",e2="poison",e3="sommeil", e4="force", e5="croissance", e6="hydratation", e7="oubli", e8="vision de nuit"}

#func _init(var e,var n, var p, var sup):
#	effet = e
#	nom = n
#	prix = p
#	superieur = sup

func get_drag_data(position):
	.get_drag_data(position)
	return null

func concatenation (var effet): 
	var res
	res = "Potion of "+ effet
	return res
