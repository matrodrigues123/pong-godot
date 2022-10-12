extends KinematicBody2D
signal playerWon
signal playerLost

var velocity = Vector2.ZERO

func start():
	position = Vector2(400, 300)
	velocity = Vector2(200, 200)

func _physics_process(delta):
	var collisionInfo = move_and_collide(velocity*delta)
	
	if collisionInfo:
		if collisionInfo.collider.name == "Left":
			emit_signal("playerLost")
			velocity = Vector2.ZERO
		elif collisionInfo.collider.name == "Right":
			emit_signal("playerWon")
			velocity = Vector2(0,0)
		else:
			velocity = velocity.bounce(collisionInfo.normal)
			velocity.x *= 1.05
			velocity.y *= 1.05

