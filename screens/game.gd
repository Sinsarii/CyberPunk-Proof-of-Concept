extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var current_screen

var screens = { "main_menu" : preload("res://screens/main_menu.tscn")
	
}



func _ready():
    set_process_input(true)
    set_process(true)
    current_screen = find_node("screen")
    _load_screen("main_menu")
    
        

func _load_screen(name):
    if name in screens:
        var old_screen = null
        if current_screen.get_child_count() > 0:
            old_screen = current_screen.get_child(0)
        if old_screen != null:
            current_screen.remove_child(old_screen)

        var new_screen = screens[name].instance()
        new_screen.connect("next_screen", self, "_load_screen")
        current_screen.add_child(new_screen)
    else:
        print("[ERROR] Cannot load screen: ", name)