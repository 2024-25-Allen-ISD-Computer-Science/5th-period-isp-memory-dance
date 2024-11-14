extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	# If the current player position is "idle", display the player idle model
	if Global.player_position == 0:
		self.visible = true
	else: 
		self.visible = false
