extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.starting == true:
		Global.starting = false
		display($"3")
		await $Countdown.timeout
		display($"2")
		await $Countdown.timeout
		display($"1")
		await $Countdown.timeout
		display($Dance)
		await $Countdown.timeout
	
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
