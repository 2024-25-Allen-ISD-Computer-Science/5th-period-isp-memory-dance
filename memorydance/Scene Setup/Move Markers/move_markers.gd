extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	match Global.current_move:
		0:
			$MoveMarker.visible = false
			$MoveMarker2.visible = false
			$MoveMarker3.visible = false
			$MoveMarker4.visible = false
			$MoveMarker5.visible = false
			$MoveMarker6.visible = false
			$MoveMarker7.visible = false
			$MoveMarker8.visible = false
			$MoveMarker9.visible = false
			$MoveMarker10.visible = false
			$MoveMarker11.visible = false
			$MoveMarker12.visible = false
		1:
			$MoveMarker.visible = true
		2:
			$MoveMarker2.visible = true
		3:
			$MoveMarker3.visible = true
		4:
			$MoveMarker4.visible = true
		5:
			$MoveMarker5.visible = true
		6:
			$MoveMarker6.visible = true
		7:
			$MoveMarker7.visible = true
		8:
			$MoveMarker8.visible = true
		9:
			$MoveMarker9.visible = true
		10:
			$MoveMarker10.visible = true
		11:
			$MoveMarker11.visible = true
		12:
			$MoveMarker12.visible = true
