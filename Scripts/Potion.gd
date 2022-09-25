extends "res://Scripts/Pickable.gd"

export var texture : Texture
export var potion : int

var prix = 0
var effects = ""
var data = {}

var potion_name = ""
var superieur = false
var effets = {e1="soin",e2="poison",e3="sommeil", e4="force", e5="croissance", e6="hydratation", e7="oubli", e8="vision de nuit"}

#func _init(var e,var n, var p, var sup):
#	effet = e
#	nom = n
#	prix = p
#	superieur = sup

func _ready():
	$Texture.texture = texture
	choose_data_potion()
	$Quantity.text = String(globalVariable.inventory[data["name"]])
	
func choose_data_potion():
	if potion == 0 :
		data["Effects"] = "Health"
		data["name"] = concatenation(data["Effects"])
		data["Texture"] = $Texture.texture
	if potion == 1 :
		data["Effects"] = "Poison"
		data["name"] = concatenation(data["Effects"])
		data["Texture"] = $Texture.texture
	if potion == 2 :
		data["Effects"] = "Sleep"
		data["name"] = concatenation(data["Effects"])
		data["Texture"] = $Texture.texture
	if potion == 3 :
		data["Effects"] = "Strength"
		data["name"] = concatenation(data["Effects"])
		data["Texture"] = $Texture.texture
	if potion == 4 :
		data["Effects"] = "Growth"
		data["name"] = concatenation(data["Effects"])
		data["Texture"] = $Texture.texture
	if potion == 5 :
		data["Effects"] = "Hydration"
		data["name"] = concatenation(data["Effects"])
		data["Texture"] = $Texture.texture
	if potion == 6 :
		data["Effects"] = "Forgetfulness"
		data["name"] = concatenation(data["Effects"])
		data["Texture"] = $Texture.texture
	if potion == 7 :
		data["Effects"] = "Night Vision"
		data["name"] = concatenation(data["Effects"])
		data["Texture"] = $Texture.texture

func get_drag_data(position):
	.get_drag_data(position)
	return data

func concatenation (var effet): 
	var res
	res = "Potion of "+ effet
	return res

	
