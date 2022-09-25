extends Control


func _process(delta):
	var eff1 = $slot1.TargetData["Effects"]
	var eff2 = $slot2.TargetData["Effects"]


func get_blend_effects(var eff1, var eff2):
	var effects_result = []
	
	for effect1 in eff1:
		for effect2 in eff2:
			if effect1 == effect2:
				effects_result.append(effect2)
	
	if len(effects_result) != 1:
		return "bizarre"
	
	return effects_result[0]




