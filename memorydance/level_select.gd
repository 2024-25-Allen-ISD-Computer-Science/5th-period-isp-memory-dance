extends Node2D



func _on_main_menu_button_up():
	get_tree().change_scene_to_file("res://main_menu.tscn")

func _on_easy_button_up():
	get_tree().change_scene_to_file("res://easy_level.tscn")

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
