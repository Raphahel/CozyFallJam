extends Control

var namesAlreadyPlaced = []

var isSlot1used = false
var isSlot2used = false

var TargetData1 = {
	"Name" : "",
	"Effects" : [],
	"Texture" : Texture
}

var TargetData2 = {
	"Name" : "",
	"Effects" : [],
	"Texture" : Texture
}

func can_drop_data(position, data):
	var canDrop : bool
	canDrop = typeof(data) == TYPE_DICTIONARY && !data["Name"].match(TargetData1["Name"]) && data["Name"] != TargetData2["Name"]
	return canDrop

func drop_data(position, data):
	if(!isSlot1used):
		TargetData1["Name"] = data["Name"]
		TargetData1["Effects"] = data["Effects"]
		TargetData1["Texture"] = data["Texture"]
		$slot1/Texture.texture = TargetData1["Texture"]
		isSlot1used = true
	elif(!isSlot2used):
		TargetData2["Name"] = data["Name"]
		TargetData2["Effects"] = data["Effects"]
		TargetData2["Texture"] = data["Texture"]
		$slot2/Texture.texture = TargetData2["Texture"]

func _process(delta):
	namesAlreadyPlaced = [TargetData1["Name"], TargetData2["Name"]]
	



func get_blend_effects(var eff1, var eff2):
	var effects_result = []
	
	for effect1 in eff1:
		for effect2 in eff2:
			if effect1 == effect2:
				effects_result.append(effect2)
	
	if len(effects_result) != 1:
		return "bizarre"
	
	return effects_result[0]






func _on_CraftingSystem_gui_input(event):
	pass # Replace with function body.
