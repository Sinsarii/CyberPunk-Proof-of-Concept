extends "res://scripts/character_class.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var energy = 100
var health = 70
var progress = 3

func save():
	var save_dict = {
						"health" : health,
						"energy" : energy,
						"progress" : progress
					}
	return save_dict