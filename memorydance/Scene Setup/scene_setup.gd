extends Node2D

@onready var label: Label = $Label

# Called when the node enters the scene tree for the first time.
	# Tile settings
const GRID_SIZE = 8
const TILE_SIZE = 50

# Reference to the tile scene
@export var TileScene: PackedScene

func _ready() -> void:
	label.text = get_meta("setup")
	# Arrange tiles in an 8x8 grid
	for i in range(GRID_SIZE):
		for j in range(GRID_SIZE):
			var tile = TileScene.instance()
			add_child(tile)
			tile.position = Vector2(i * TILE_SIZE, j * TILE_SIZE)

 # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
