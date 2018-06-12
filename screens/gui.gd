extends "abstract_screen.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var dialogue_panel = get_node("dialogue_panel")
onready var stats_panel = get_node("stats_panel")
onready var text_box = get_node("dialogue_panel/dialogue_text_box/text_box")
func _ready():
	text_box.add_text("test test test test test test test test testtest test test test test test test test testtest test test test test test test test testtest test test test test test test test testtest test test test test test test test testtest test test test test test test test testtest test test test test test test test testtest test test test test test test test testtest test test test test test test test testtest test test test test test test test testtest test test test test test test test testtest test test test test test test test testtest test test test test test test test testtest test test test test test test test testtest test test test test test test test testtest test test test test test test test test")
	display_date_time()
	# Called every time the node is added to the scene.
	# Initialization here

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_dialogue_close_button_pressed():
	dialogue_panel.hide()
	get_node("dialogue_open_button").show()

func _on_dialogue_open_button_pressed():
	dialogue_panel.show()
	get_node("dialogue_open_button").hide()

func _on_stats_panel_open_pressed():
	stats_panel.show()
	get_node("stats_panel_open").hide()

func _on_stats_panel_close_pressed():
	stats_panel.hide()
	get_node("stats_panel_open").show()

#STATS BOX FUNCTIONS

func display_date_time():
	var day = 01
	var month = 01
	var year = 2024
	var hour = 14
	var minute = 30
	
	var date_time_label = get_node("stats_panel/date_time_label")
	
	date_time_label.set_text(str(day) + "/" + str(month) + "/" + str(year) + "     " + str(hour) + ":" + str(minute))
