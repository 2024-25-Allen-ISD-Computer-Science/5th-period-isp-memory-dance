extends Node2D

func _on_main_menu_button_up():
	get_tree().change_scene_to_file("res://main_menu.tscn")

func _on_easy_button_up():
	get_tree().change_scene_to_file("res://level_test.tscn")

func _on_normal_button_up():
	get_tree().change_scene_to_file("res://normal_level.tscn")

func _on_hard_button_up():
	get_tree().change_scene_to_file("res://hard_level.tscn")

func _on_infinity_mode_button_up():
	get_tree().change_scene_to_file("res://infinity_mode.tscn")

func _on_one_and_done_button_up():
	get_tree().change_scene_to_file("res://one_and_done.tscn")

func _on_add_one_button_up():
	get_tree().change_scene_to_file("res://add_one.tscn")

# Toggles sound guides depending on player input
func _on_sound_guides_toggled(toggled_on: bool):
	if toggled_on:
		Global.sound_guides = true
	else:
		Global.sound_guides = false
