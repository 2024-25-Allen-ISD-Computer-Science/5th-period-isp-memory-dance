extends Node

# General variables
var current_move = 0
var text = 0
var starting = false
var restarting = false
var sound_guides = true
var sound_playing = false
# menus = 0, easy = 1, normal = 2, hard = 3
var current_level = 0

# Player Variables:
var player_turn = false
var player_moves = []
var player_health = 100

# idle = 0, up = 1, down = 2, right = 3, left = 4
var player_position = 0


# Enemy Variables:
var enemy_moves = []
var enemy_health = 100

# idle = 0, up = 1, down = 2, right = 3, left = 4
var enemy_position = 0

var game_over = preload("res://Scene Setup/game_over.tscn")

# Resets all relevant variables to restart the game
func restart():
	restarting = false
	current_move = 0
	text = 0
	player_turn = false
	player_moves.clear()
	enemy_moves.clear()
	player_position = 0
	enemy_position = 0
	player_health = 100
	enemy_health = 100

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
