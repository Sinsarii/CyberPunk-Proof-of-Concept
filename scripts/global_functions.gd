extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func load_file_as_json(filepath):
	var data_file = File.new()
	if data_file.open(filepath, File.READ) != OK:
	    return "could not read"
	var data_text = data_file.get_as_text()
	data_file.close()
	var data_parse = JSON.parse(data_text)
	if data_parse.error != OK:
	    return "could not parse"
	return data_parse.result

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
