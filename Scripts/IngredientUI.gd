extends "res://Scripts/Pickable.gd"

export var ingredient_name : String = "Blue Mushroom"
export var texture : Texture = null
var effects = []
#var scarcity : int
const DRAGPREVIEWING = preload("res://Scenes/DragPreviewIngredients.tscn")


var SPRITEINGR = {
	"Blue Mushroom":       preload("res://Image/champi_bleu.png"),
	"Red Mushroom":        preload("res://Image/champi_bleu.png"),
	"Green Mushroom":      preload("res://Image/champi_vert.png"),
	"Snail" :              preload("res://Image/escargot_marron.png"),
	"Polka Dot Snail":     preload("res://Image/escargot_pois.png"),
	"Kilted Snail":        preload("res://Image/escargot_kilt.png"),
	"Blood Butterfly":     preload("res://Image/papillon_rouge.png"),
	"Blue Morpho":         preload("res://Image/papillon_bleu.png"),
	"Bubblegum Butterfly": preload("res://Image/papillon_rose.png"),
	"Nettle":              preload("res://Image/ortie.png"),
	"Blueberry":           preload("res://Image/myrtilles.png"),
	"Raspberry":           preload("res://Image/framboises.png"),
}


func _ready():
	effects = globalVariable.ingredient_effects[ingredient_name]
	$Texture.texture = texture


func update_var(var name):
	effects = globalVariable.ingredient_effects[name]


func get_drag_data(position):
	var data = {}
	data["Name"] = ingredient_name
	data["Effects"] = effects
	data["Texture"] = $Texture.texture
	
	var drag_preview = DRAGPREVIEWING.instance()
	drag_preview.texture = $Texture.texture
	$Texture/Modulate.visible = true

	drag_preview.scale = Vector2(0.5, 0.5)
	
	add_child(drag_preview)
	return data
