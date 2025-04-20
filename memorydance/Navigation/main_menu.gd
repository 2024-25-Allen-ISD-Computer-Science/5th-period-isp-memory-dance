extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.current_level = 0
	# Changes window size
	DisplayServer.window_set_size(Vector2(864, 864))

# Changes scene to level select when start button is pressed
func _on_start_button_button_up():
	get_tree().change_scene_to_file("res://Navigation/level_select.tscn")
