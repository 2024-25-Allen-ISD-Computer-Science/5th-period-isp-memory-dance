extends Node

# Player Variables:

# idle = 0, up = 1, down = 2, right = 3, left = 4
var player_position = 0


# Enemy Variables:

# idle = 0, up = 1, down = 2, right = 3, left = 4
var enemy_position = 0

# Player Movements:

# Sets player's current position to "up"
func player_movement_up():
	player_position = 1
	# Add movement to array

# Sets player's current position to "down"
func player_movement_down():
	player_position = 2
	# Add movement to array

# Sets player's current position to "right"
func player_movement_right():
	player_position = 3
	# Add movement to array

# Sets player's current position to "left"
func player_movement_left():
	player_position = 4
	# Add movement to array


# Enemy Movements:

# Sets enemy's current position to "up"
func enemy_movement_up():
	enemy_position = 1
	# Add movement to array

# Sets enemy's current position to "down"
func enemy_movement_down():
	enemy_position = 2
	# Add movement to array

# Sets enemy's current position to "right"
func enemy_movement_right():
	enemy_position = 3
	# Add movement to array

# Sets enemy's current position to "left"
func enemy_movement_left():
	enemy_position = 4
	# Add movement to array
