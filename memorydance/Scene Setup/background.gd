extends Node2D

# When level select button is pressed, reset all relevant variables
func _on_level_select_button_button_down():
	Global.restart()

# When level select button is released, change to level select button scene
func _on_level_select_button_button_up():
	Global.restarting = false
	get_tree().change_scene_to_file("res://Navigation/level_select.tscn")
