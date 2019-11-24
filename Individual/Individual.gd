extends KinematicBody2D


export var max_distance = 200
export var epsilon_distance = 5
export var health = 100
export var ranged_damage = 20
export var speed = 10
export var iterations = 100
var target_pos = Vector2()
var count_iterations = 0

func _physics_process(delta):
	
	move()
		
func create_path():
	
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	
	var new_target_x = rng.randi_range(speed, max_distance)
	var new_target_y = rng.randi_range(speed, max_distance)
	var exponent_x = rng.randi_range(1,2)
	var exponent_y = rng.randi_range(1,2)
	new_target_x *= pow(-1, exponent_x)
	new_target_y *= pow(-1, exponent_y)

	var new_target = Vector2(position.x+new_target_x, position.y+new_target_y)
	if not is_in_viewport(new_target):
		
		new_target = create_path()
	return new_target
	
func move() -> void:
	
	if position.distance_to(target_pos) > epsilon_distance:
		
		var direction = target_pos - position
		var collision_object = move_and_collide(direction.normalized()*speed)
		handle_collision(collision_object)
		
	elif count_iterations < iterations:
		
		target_pos = create_path()
		count_iterations += 1
		
func handle_collision(collision_object: KinematicCollision2D) -> void:
	
	if is_instance_valid(collision_object):
		
		if collision_object.collider.get_collision_layer_bit(0) or collision_object.collider.get_collision_layer_bit(1):
			
			target_pos = create_path()
	
	
func set_position(pos: Vector2) -> void:
	
	position = pos
	target_pos = pos
	
func is_in_viewport(pos: Vector2):
	
	return not (pos.x < 0 or 
	pos.x > get_parent().get_viewport_rect().size.x or 
	pos.y < 0 or 
	pos.y > get_parent().get_viewport_rect().size.y)
		
	
	
	
	
	

