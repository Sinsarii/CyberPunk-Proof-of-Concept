extends "res://data/characters/character_class.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var progress = 12

func _ready():
	pass


func save():
	var save_dict = {
						"health" : health,
						"energy" : energy,
						"progress" : progress
					}
	return save_dict