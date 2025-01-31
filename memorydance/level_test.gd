extends Node2D

# Set the limit for enemy moves in pattern generation
var move_limit = 4

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	# If the player has performed the same amount of moves as the enemy,
	# end the player's turn
	if Global.player_moves.size() == move_limit:
		Global.player_turn = false
		end_player_turn()

# Handles results at the end of the player's turn 
func end_player_turn():
	# If the player matches the enemy pattern correctly, both arrays are
	# cleared and a new enemy pattern is generated
	if Global.player_moves == Global.enemy_moves:
		Global.text = 3
		Global.current_move = 0
		Global.player_position = 0
		Global.player_moves.clear()
		Global.enemy_moves.clear()
		$MoveTimer.start()
		await $MoveTimer.timeout
		generate_enemy_pattern(move_limit)
	
	# If the player does not match the enemy pattern correctly, player array
	# is cleared while the enemy repeats the same pattern
	else:
		Global.text = 4
		Global.current_move = 0
		Global.player_position = 0
		Global.player_moves.clear()
		$MoveTimer.start()
		await $MoveTimer.timeout
		for i in Global.enemy_moves.size():
			Global.enemy_position = Global.enemy_moves[i]
			print(Global.enemy_moves)
			Global.current_move += 1
			$MoveTimer.start()
			await $MoveTimer.timeout
		
		Global.current_move = 0
		Global.enemy_position = 0
		# Player turn begins
		Global.text = 5
		Global.player_turn = true

# Generates enemy pattern in an array while enemy performs
func generate_enemy_pattern(moves: int):
	for i in moves:
		Global.enemy_position = randi_range(1,4)
		Global.enemy_moves.append(Global.enemy_position)
		print(Global.enemy_moves)
		Global.current_move += 1
		$MoveTimer.start()
		await $MoveTimer.timeout
	
	Global.current_move = 0
	Global.enemy_position = 0
	# Player turn begins
	Global.text = 5
	Global.player_turn = true

func _on_timer_timeout():
	generate_enemy_pattern(move_limit)
