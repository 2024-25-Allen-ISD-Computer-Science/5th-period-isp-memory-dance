extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$TimerDisplay.set_text(str($Countdown.get_time_left()).pad_decimals(2))
	if Global.player_health == 0:
		$EnemyWin.visible = true
	
	if Global.enemy_health == 0:
		$PlayerWin.visible = true
	
	if Global.enemy_moves == Global.player_moves and Global.player_moves.is_empty() == false:
		$Perfect.visible = true
	
	if Global.enemy_moves != Global.player_moves and Global.enemy_moves.size() == Global.player_moves.size():
		$TryAgain.visible = true
	
	if Global.player_turn == true:
		$YourTurn.visible = true
		$Countdown.start()
		await $Countdown.timeout
		$YourTurn.visible = false

func reset():
	$EnemyWin.visible = false
	$PlayerWin.visible = false
	$Perfect.visible = false
	$TryAgain.visible = false
	$YourTurn.visible = false
