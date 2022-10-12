extends KinematicBody2D

var screenSize
var speed = 250


func start():
	position = Vector2(50, 300)
	
func _ready():
	screenSize = get_viewport_rect().size
	
func _process(delta):
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		direction.y = -1
	if Input.is_action_pressed("ui_down"):
		direction.y = 1
	
	position += direction * speed * delta
	position.y = clamp(position.y, 0, screenSize.y)


