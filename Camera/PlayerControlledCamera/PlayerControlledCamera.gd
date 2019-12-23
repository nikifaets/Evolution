extends Camera2D

var speed = 40
var velocity = Vector2()


func _physics_process(delta):
	
	handle_input()
	
	position += velocity.normalized()*speed

func handle_input():
	
	if Input.is_action_just_pressed("move_up"):
		
		velocity.y -= 1
	
	if Input.is_action_just_released("move_up"):
		
		velocity.y += 1
		
	if Input.is_action_just_pressed("move_down"):
		
		velocity.y += 1
	
	if Input.is_action_just_released("move_down"):
		
		velocity.y -= 1
	
	if Input.is_action_just_pressed("move_left"):
		
		velocity.x -= 1
		
	if Input.is_action_just_released("move_left"):
		
		velocity.x += 1
		
	if Input.is_action_just_pressed("move_right"):
		
		velocity.x += 1
		
	if Input.is_action_just_released("move_right"):
		
		velocity.x -= 1
	
	