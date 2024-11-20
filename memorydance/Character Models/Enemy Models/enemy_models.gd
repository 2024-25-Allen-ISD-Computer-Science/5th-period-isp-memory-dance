extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	# Calls corresponding enemy movement function when enemy position is set
	# to any position
	match Global.enemy_position:
		1:
			Global.enemy_movement_up()
		2:
			Global.enemy_movement_down()
		3:
			Global.enemy_movement_right()
		4:
			Global.enemy_movement_left()
