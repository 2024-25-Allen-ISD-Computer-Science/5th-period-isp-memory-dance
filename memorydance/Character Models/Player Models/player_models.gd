extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	# Calls corresponding player movement function when pressing arrows or WASD 
	# keys
	if Input.is_action_just_pressed("PlayerUp"):
		Global.player_movement_up()
	
	if Input.is_action_just_pressed("PlayerDown"):
		Global.player_movement_down()
	
	if Input.is_action_just_pressed("PlayerRight"):
		Global.player_movement_right()
	
	if Input.is_action_just_pressed("PlayerLeft"):
		Global.player_movement_left()