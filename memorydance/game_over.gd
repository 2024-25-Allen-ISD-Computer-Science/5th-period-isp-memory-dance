extends Node2D

# When restart button is pressed, reset all relevant variables
func _on_restart_button_down():
	Global.restart()

# When restart button is released, reload the scene to restart the game
func _on_restart_button_up():
	Global.restarting = false
	get_tree().reload_current_scene()

# When main menu button is pressed, reset all relevant variables
func _on_main_menu_button_down():
	Global.restart()

# When main menu button is released, change to main menu scene
func _on_main_menu_button_up():
	Global.restarting = false
	get_tree().change_scene_to_file("res://main_menu.tscn")
