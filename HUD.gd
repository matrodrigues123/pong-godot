extends CanvasLayer
signal startGame


func showMessage(text):
	$Message.text = text
	$Message.show()
	
func showWon():
	showMessage("You won!")
	$StartButton.show()
func showLost():
	showMessage("You lost!")
	$StartButton.show()

func _on_StartButton_pressed():
	$StartButton.hide()
	$Message.hide()
	emit_signal("startGame")
