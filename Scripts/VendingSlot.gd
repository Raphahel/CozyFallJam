extends Control

var TargetData1 = {
	"Name" : "",
	"Effects" : [],
	"Texture" : Texture
}

func can_drop_data (position,data):
	return true
	
func drop_data(position, data):
	TargetData1["Name"] = data["name"]
	TargetData1["Effects"] = data["Effects"]
	TargetData1["Texture"] = data["Texture"]
	$Texture.texture = TargetData1["Texture"]
	globalVariable.dropped_potion = TargetData1["Effects"]
	





