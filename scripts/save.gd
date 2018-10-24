extends Node

const SAVE_PATH = "res://saves/save.json"
const CHARACTERS_PATH = "res://data/characters/"
var _settings = {}
var FILE_ARRAY = ["player.gd", "npc.gd"]

func _ready():
	load_game()
	
func save_game():
#	var dir = Directory.new()
#	if dir.open(CHARACTERS_PATH) == OK:
#		dir.list_dir_begin()
#		var file_name = dir.get_next()
#		while (file_name != ""):
#			print("found filename " + file_name)
#			FILE_ARRAY.append(str(file_name) + ".gd")
#			file_name = dir.get_next()
	var save_dict = {}
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