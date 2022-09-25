extends Node


var money = 0


var anxietyLevel = 0


const maxAnxietyLevel := 100


const walkVelocity = 200


var obstacle_scenes = [
	load("res://Scenes/treeStump.tscn"),
	load("res://Scenes/rock.tscn"),
	load("res://Scenes/bush.tscn"),
]



enum Effects {
	HEALTH,
	POISON,
	STRENGTH,
	GROWTH,
	SLEEP,
	FORGETFULNESS,
	NIGHT_VISION,
	HYDRATION
}


var ingredient_effects = {
	"Blue Mushroom":       ["growth", "night vision"],
	"Red Mushroom":        ["poison", "forgetfulness"],
	"Green Mushroom":      ["growth", "forgetfulness"],
	"Snail" :              ["poison", "sleep"],
	"Polka Dot Snail":     ["health", "strength"],
	"Kilted Snail":        ["forgetfulness", "hydration"],
	"Butterfly":           ["strength", "night vision"],
	"Blue Morpho":         ["sommeil", "hydration"],
	"Bubblegum Butterfly": ["strength", "sommeil"],
	"Nettle":              ["health", "hydration"],
	"Blueberry":           ["health", "growth"],
	"Raspberry":           ["poison", "night vision"],
}


var Prices = [
	10,  # Health
	20,  # Poison
	30,  # Strength
	40,  # Growth
	50,  # Sleep
	60,  # Forgetfulness
	70,  # Night vision
	80,  # Hydration
]


var inventory = {
	"Blue Mushroom":           0,
	"Red Mushroom":            0,
	"Green Mushroom":          0,
	"Snail" :                  0,
	"Polka Dot Snail":         0,
	"Kilted Snail":            0,
	"Butterfly":               0,
	"Blue Morpho":             0,
	"Bubblegum Butterfly":     0,
	"Potion of Health":        0,
	"Potion of Poison":        0,
	"Potion of Strength":      0,
	"Potion of Growth":        0,
	"Potion of Sleep":         0,
	"Potion of Forgetfulness": 0,
	"Potion of Night Vision":  0,
	"Potion of Hydration":     0,
}
