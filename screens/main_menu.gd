extends "abstract_screen.gd"

# class member variables go here, for example:
# var a = 2

# var b = "textvar"
onready var continue_button = get_node("buttons/continue")

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	continue_button.disabled = true

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_resize_pressed():
	OS.set_window_size(Vector2(1280, 720))


func _on_resize_large_pressed():
	OS.set_window_size(Vector2(1920, 1080))


func _on_gui_button_pressed():
	emit_signal("next_screen","gui")
