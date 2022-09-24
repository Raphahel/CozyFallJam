extends Node

var first_name
var dialogue
var potion
var price_modif

func _init(var fn, var diag,var pot):
	first_name = fn
	dialogue = diag
	potion = pot
	price_modif = (randi() % 125 + 75)/100

var liste_dialogues = []

var liste_dial_sleep = ["I haven't slept for a few days, I would like a sleep potion", "My dad wants to stop me from going out, I have to make him sleep so that he doesn't realize that I disobey him. A sleep potion pleae","My neighbours are a pain in the ass and keep waking me up at night, I reeaally need a sleep potion.","I need to make my neighbour sleep so I can kill bubulle.I want a sleep potion"]

var liste_dial_health = ["My brother fell from a tree, I need a healing potion please","I just made a paper cut, could I have a healing potion ?","I tripped in a hole and twisted my ankle, a healing potion please.","My neighbour just poisoned Bubulle I need to heal him."]

var liste_dial_poison = ["Is it possible to take a potionwithout you knowing which one ? No ? That's intrusive, disrespectful, in short, unacceptable. Give mesome poison.","My roommate keeps making dirty jokes I can't take it anymore. It is a bit extreme but I need a poison.","A ghost is making a mess in y house, would you please give me some poison so I can stop him.","I need to kill bubulle. A poison pleae."]

var liste_dial_strength = ["Hi, I need to open a jar of jam, that means I need a strength potion, please.","The wall keeps prooking me. I need to teach him a lesson : I need a strength potion.","I want a strength potion...because I am your father Luke.","I need bubulle to be bigger, stronger and scarier, my neighbour is annoying. Can I have a strength potion ?"]

var liste_dial_growth = ["Hum... Hi...I'm...well...Just..a growth potion please","I planted money yesterday and it won't grow, can I have a growth potion ?","I need a bigger house, and I need a growth potion to have one.","Bubulle has muscles now I have to give him a bigger aquarium."]

var liste_dial_hydration = ["I spend my time forgetting to drink and I ended up at the hospice because of that, could I have a hydration potion.","I need to hydrate my fish bubulle, can I have a hydration potion ?", "I'm thirsty, gimme some strong water"]

var liste_dial_forgetfulness = ["I have to forget bubulle's death... Please give me a potion of forgetfulness?", "My horse was attacked by a mouse, he is useless now, can I have a potion of forgetfulness to make him forget ?", "This night, I dreamt about people with sausages instead of fingers"]

var liste_dial_night_vision = ["I want to go hunt a platypus, and I need a night vision potion","I have to infiltrate myself in my neighbour's domain to kill bubulle in his pond. Could I have a night vision potion please ?","I want to watch the merchant nearby, but at night. Can I have a night vision potion"]

