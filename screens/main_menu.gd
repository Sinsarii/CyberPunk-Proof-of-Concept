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
