extends Node

const SAVE_PATH = "res://saves/save.json"
const CHARACTERS_PATH = "res://data/characters/"
var _settings = {}
#files are hard-coded due to Godot creating '.' and '..' temporary files that cannot be excluded using navigation=true
var FILE_ARRAY = ["player.gd", "npc.gd"]

func _ready():
	load_game()
	
#creates a dictionary that will store multiple script files as sub dictionaries
#dictionary key will be file name, dictionary values will be data that is stored in the save function of that script file.
func save_game():
	var save_dict = {}
	#for every file call its save function and store the returned dictionary in save_dict
	for file in FILE_ARRAY:
		var character = load(str(CHARACTERS_PATH)+str(file))
		var character_class=character.new()
		save_dict[file] = character_class.save()

		
	var save_file = File.new()
	save_file.open(SAVE_PATH, File.WRITE)
	
	save_file.store_line(to_json(save_dict))
	save_file.close()
	
func load_game():
	
	
	
	
	pass