extends KinematicBody2D

export (int) var speed = 400
export (int) var jump_speed = -500
export (int) var gravity = 4000
export (float, 0, 1.0) var friction = 0.1
export (float, 0, 1.0) var acceleration = 0.1

var velocity = Vector2.ZERO

func get_input():
	var dir = 0
	if Input.is_action_pressed("right"):
		dir += 1
	if Input.is_action_pressed("left"):
		dir -= 1
	if dir != 0:
		velocity.x = lerp(velocity.x, dir * speed, acceleration)
		#print(dir)
		$CollisionShape2D.scale.x = dir
	else:
		velocity.x = lerp(velocity.x, 0, friction)
	
	if Input.is_action_pressed("debugSpeedUp"):
		if speed < 500:
			speed += 1
	if Input.is_action_pressed("debugSpeedDn"):
		if speed > 0:
			speed -= 1
	
func _physics_process(delta):
	get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if Input.is_action_just_pressed("jumpBtn"):
		if is_on_floor():
			velocity.y = jump_speed
	
	
