extends Node2D

func _on_restart_button_down():
	Global.restart()

func _on_restart_button_up():
	Global.restarting = false

func _on_main_menu_button_down():
	Global.restart()

func _on_main_menu_button_up():
	Global.restarting = false
	get_tree().change_scene_to_file("res://main_menu.tscn")
