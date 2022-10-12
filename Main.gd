extends Node

func newGame():
	$Ball.start()
	$Player.start()
	$Enemy.start()


func _on_Ball_playerLost():
	$HUD.showLost()


func _on_Ball_playerWon():
	$HUD.showWon()

func _on_HUD_startGame():
	newGame()
