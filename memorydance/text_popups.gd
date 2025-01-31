extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	match Global.text:
		1: #Still needs to be implemented
			display($EnemyWin)
			Global.text = 0
		2: #Still needs to be implemented
			display($PlayerWin)
			Global.text = 0
		3:
			display($Perfect)
			Global.text = 0
		4:
			display($TryAgain)
			Global.text = 0
		5:
			display($YourTurn)
			Global.text = 0

func display(text: Sprite2D):
	text.visible = true
	$Countdown.start()
	await $Countdown.timeout
	text.visible = false

func reset():
	$EnemyWin.visible = false
	$PlayerWin.visible = false
	$Perfect.visible = false
	$TryAgain.visible = false
	$YourTurn.visible = false
