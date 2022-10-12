extends KinematicBody2D

var screenSize
var speed = 350
var ballInfo


func start():
	position = Vector2(750, 300)
	
	
func _ready():
	screenSize = get_viewport_rect().size
	ballInfo = get_node("/root/Main/Ball")
	
func _process(delta):
	var direction = Vector2.ZERO
	
	if position.y > ballInfo.position.y:
		direction.y = -1
	elif position.y < ballInfo.position.y:
		direction.y = 1
	
	position += direction * speed * delta
	position.y = clamp(position.y, 0, screenSize.y)



