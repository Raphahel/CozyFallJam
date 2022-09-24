extends Node


func get_blend_effects(var ingr1, var ingr2):
	var effects_result = []
	
	for effect1 in ingr1.effects:
		for effect2 in ingr2.effects:
			if effect1 == effect2:
				effects_result.append(effect2)
	
	if len(effects_result) > 1:
		return "bizarre"
	
	return effects_result[0]
