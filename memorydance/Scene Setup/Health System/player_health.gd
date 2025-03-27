extends TextureProgressBar

func _ready():
	max_value = 100
	min_value = 0
	
func _process(delta):
	value = Global.player_health
