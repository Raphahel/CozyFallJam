extends Control

var TargetData = {
	"Name" : "none",
	"Texture" : Texture
}

func can_drop_data(position, data):
	var canDrop := typeof(data) == TYPE_DICTIONARY 
	return canDrop

func drop_data(position, data):
	TargetData["Name"] = data["Name"]
	TargetData["Texture"] = data["Texture"]
	$Texture.texture = TargetData["Texture"]
