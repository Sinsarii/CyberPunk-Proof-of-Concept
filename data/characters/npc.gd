extends "res://data/characters/character_class.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var affinity = 3

func save():
	var save_dict = {
						"health" : health,
						"energy" : energy,
						"affinity" : affinity
					}
	return save_dict