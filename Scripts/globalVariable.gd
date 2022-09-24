extends Node


var money = 0


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
	"Raspberry":           ["poison", "night vision"]
}


var Prices = [
	10,
	20,
	30,
	40,
	50,
	60,
	70,
	80
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
	"Potion of Hydration":     0
}
