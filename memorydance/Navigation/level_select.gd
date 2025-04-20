extends Node2D

func _ready():
	Global.current_level = 0
	DisplayServer.window_set_size(Vector2(1152, 648))

func _on_main_menu_button_up():
	get_tree().change_scene_to_file("res://Navigation/main_menu.tscn")

func _on_easy_button_up():
	Global.current_level = 1
	get_tree().change_scene_to_file("res://Levels/regular_level.tscn")

func _on_normal_button_up():
	Global.current_level = 2
	get_tree().change_scene_to_file("res://Levels/regular_level.tscn")

func _on_hard_button_up():
	Global.current_level = 3
	get_tree().change_scene_to_file("res://Levels/regular_level.tscn")

func _on_infinity_mode_button_up():
	get_tree().change_scene_to_file("res://Levels/infinite_mode.tscn")

func _on_one_and_done_button_up():
	Global.current_level = 4
	get_tree().change_scene_to_file("res://Levels/regular_level.tscn")

func _on_add_one_button_up():
	get_tree().change_scene_to_file("res://Levels/add_one.tscn")

# Toggles sound guides depending on player input
func _on_sound_guides_toggled(toggled_on: bool):
	if toggled_on:
		Global.sound_guides = true
	else:
		Global.sound_guides = false
