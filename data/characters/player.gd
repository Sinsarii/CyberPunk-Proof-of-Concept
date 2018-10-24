extends "res://scripts/character_class.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var energy = 200
var health = 150
var progress = 12

func save():
	var save_dict = {
						"health" : health,
						"energy" : energy,
						"progress" : progress
					}
	return save_dict