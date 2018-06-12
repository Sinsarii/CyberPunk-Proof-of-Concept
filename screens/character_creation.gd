extends "abstract_screen.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var history_icon_list = get_node("history_box/history_icon_list")
onready var icon = "res://icons/history/"
onready var icon_text = "res://icons/history/history_data.json"

func _ready():
	populate_icon_list(icon, history_icon_list)
	var icon_data = global_functions.load_file_as_json(icon_text)
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func populate_icon_list(icon_path, icon_list_node):
	#history_box.get_node("history_icon_list").add_icon_item(load("res://icons/spades.png"), true)
	#history_box.get_node("history_icon_list").add_icon_item(load("res://icons/rune-sword.png"), true)
	
	var image_name_array = build_image_name_array(icon_path)
	
	for i in image_name_array:
		icon_list_node.add_icon_item(load(str(icon_path) + (str(i))), true)
		
		
	
func build_image_name_array(path):
	var image_names = []
	var dir = Directory.new()
	dir.open(path)
	dir.list_dir_begin()
	
	while true:
		var image_name = dir.get_next()
		if image_name == "":
			break
		elif not image_name.begins_with("."):
			if image_name.findn(".import") == -1 and image_name.findn(".json") == -1:
				#findn returns -1 if substring is not found
				image_names.append(image_name)
	
	dir.list_dir_end()
	
	return image_names