extends Node


var money = 0


var anxietyLevel = 0


const maxAnxietyLevel := 100


const walkVelocity = 200


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

const SPRITEINGR = {
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

var ingredient_effects = {
	"Blue Mushroom":       ["Growth", "Night Vision"],
	"Red Mushroom":        ["Poison", "Forgetfulness"],
	"Green Mushroom":      ["Growth", "Forgetfulness"],
	"Snail" :              ["Poison", "Sleep"],
	"Polka Dot Snail":     ["Health", "Strength"],
	"Kilted Snail":        ["Forgetfulness", "Hydration"],
	"Blood Butterfly":     ["Strength", "Night Vision"],
	"Blue Morpho":         ["Sleep", "Hydration"],
	"Bubblegum Butterfly": ["Strength", "Sleep"],
	"Nettle":              ["Health", "Hydration"],
	"Blueberry":           ["Health", "Growth"],
	"Raspberry":           ["Poison", "Night Vision"],
}


var Prices = [
	100,  # Health
	60,  # Poison
	70,  # Strength
	80,  # Growth
	50,  # Sleep
	90,  # Forgetfulness
	75,  # Night vision
	50,  # Hydration
]


var inventory = {
	"Blue Mushroom":           0,
	"Red Mushroom":            0,
	"Green Mushroom":          0,
	"Snail" :                  0,
	"Polka Dot Snail":         0,
	"Kilted Snail":            0,
	"Blood Butterfly":         0,
	"Blue Morpho":             0,
	"Bubblegum Butterfly":     0,
	"Blueberry":               0,
	"Raspberry":               0,
	"Nettle":                  0,
	"Potion of Health":        0,
	"Potion of Poison":        0,
	"Potion of Strength":      0,
	"Potion of Growth":        0,
	"Potion of Sleep":         0,
	"Potion of Forgetfulness": 0,
	"Potion of Night Vision":  0,
	"Potion of Hydration":     0,
}
