extends Node2D

# Set the limit for enemy moves in pattern generation
var move_limit = 4

func _ready():
	Global.starting = true

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
		Global.enemy_health -= 20
		# Checks if enemy has died
		if Global.enemy_health > 0:
			Global.text = 3
			reset()
			$MoveTimer.start()
			await $MoveTimer.timeout
			generate_enemy_pattern(move_limit)
		# If enemy has died, display game over screen
		else:
			add_child(Global.game_over.instantiate())
			Global.text = 2
	
	# If the player does not match the enemy pattern correctly, player array
	# is cleared while the enemy repeats the same pattern
	else:
		Global.player_health -= 20
		# Checks if player has died
		if Global.player_health > 0:
			Global.text = 4
			reset()
			$MoveTimer.start()
			await $MoveTimer.timeout
			for i in Global.enemy_moves.size():
				Global.enemy_position = Global.enemy_moves[i]
				print(Global.enemy_moves)
				Global.current_move += 1
				$MoveTimer.start()
				await $MoveTimer.timeout
			
			start_player_turn()
		# If player has died, display game over screen
		else:
			add_child(Global.game_over.instantiate())
			Global.text = 1

# Generates enemy pattern in an array while enemy performs
func generate_enemy_pattern(moves: int):
	for i in moves:
		Global.enemy_position = randi_range(1,4)
		Global.enemy_moves.append(Global.enemy_position)
		print(Global.enemy_moves)
		Global.current_move += 1
		$MoveTimer.start()
		await $MoveTimer.timeout
	
	start_player_turn()

# Once countdown ends, start the game
func _on_starting_timer_timeout():
	generate_enemy_pattern(move_limit)

# At the end of the player turn, reset models and clear arrays accordingly
func reset():
	Global.current_move = 0
	Global.player_position = 0
	if Global.enemy_moves == Global.player_moves:
		Global.enemy_moves.clear()
	Global.player_moves.clear()

# At the end of the enemy turn, reset models and display text, then signal
# start of the player turn
func start_player_turn():
	Global.current_move = 0
	Global.enemy_position = 0
	Global.text = 5
	Global.player_turn = true
