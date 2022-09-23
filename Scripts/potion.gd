extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
class_name Potion

var prix = 0
var effet =""
var nom = "" 
var superieur = false

func _init(var e,var n, var p, var sup):
	effet = e
	nom = n
	prix = p
	superieur = sup

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
