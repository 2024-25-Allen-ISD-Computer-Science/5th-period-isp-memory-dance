extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# If the game is starting, display the countdown
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
	
	# Displays text according to what the variable text is set to,
	# which changes in the game scene
	match Global.text:
		1:
			display($EnemyWin)
			Global.text = 0
		2: 
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

# Display select text for 1 second
func display(text: Sprite2D):
	text.visible = true
	$Countdown.start()
	await $Countdown.timeout
	text.visible = false
