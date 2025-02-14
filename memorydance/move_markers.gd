extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	match Global.current_move:
		0:
			$MoveMarker.visible = false
			$MoveMarker2.visible = false
			$MoveMarker3.visible = false
			$MoveMarker4.visible = false
		1:
			$MoveMarker.visible = true
		2:
			$MoveMarker2.visible = true
		3:
			$MoveMarker3.visible = true
		4:
			$MoveMarker4.visible = true
