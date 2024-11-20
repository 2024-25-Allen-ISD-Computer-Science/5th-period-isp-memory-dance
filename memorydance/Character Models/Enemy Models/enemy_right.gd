extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	# If the current enemy position is "right", display the enemy right model
	if Global.enemy_position == 3:
		self.visible = true
	else: 
		self.visible = false
