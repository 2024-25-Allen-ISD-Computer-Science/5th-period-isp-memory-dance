extends Node

var current_move = 0

# Player Variables:
var player_turn = false
var player_moves = []

# idle = 0, up = 1, down = 2, right = 3, left = 4
var player_position = 0


# Enemy Variables:
var enemy_moves = []

# idle = 0, up = 1, down = 2, right = 3, left = 4
var enemy_position = 0

# Player Movements:

# Sets player's current position to "up"
func player_movement_up():
	if player_turn == true:
		player_position = 1
		player_moves.append(1)

# Sets player's current position to "down"
func player_movement_down():
	if player_turn == true:
		player_position = 2
		player_moves.append(2)

# Sets player's current position to "right"
func player_movement_right():
	if player_turn == true:
		player_position = 3
		player_moves.append(3)

# Sets player's current position to "left"
func player_movement_left():
	if player_turn == true:
		player_position = 4
		player_moves.append(4)
