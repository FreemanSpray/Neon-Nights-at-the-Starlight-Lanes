extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called when unhandled input is detected
func _unhandled_input(event):
	if event.is_action_pressed("ui_escape"):
		# Quit game
		get_tree().quit()
	if event.is_action_pressed("ui_accept"):
		# Start game
		get_tree().change_scene("res://Scenes/Main.tscn")
	# Mark input as handled so it won't trigger multiple times per keypress
	get_tree().set_input_as_handled()