extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	# Checks if a sound is already playing to prevent overlap
	if Global.sound_playing == false:
		# Plays sound corresponding to enemy's position. If idle, does not 
		# play sound
		match Global.enemy_position:
			1:
				$UpSound.play()
			2:
				$DownSound.play()
			3:
				$RightSound.play()
			4:
				$LeftSound.play()
		Global.sound_playing = true
