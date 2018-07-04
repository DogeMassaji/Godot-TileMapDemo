extends KinematicBody2D

export (int) var speed

func _ready():
	pass

func _physics_process(delta):
	var velocity = input_action()
	move_and_slide(velocity)

func input_action():
	var velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	return (velocity.normalized() * speed)
#	position += velocity
