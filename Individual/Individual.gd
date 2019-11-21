extends KinematicBody2D


export var max_distance = 200
export var epsilon_distance = 5
export var health = 100
export var ranged_damage = 20
export var speed = 5
export var iterations = 10
var target_pos = Vector2()
var count_iterations = 0

func _physics_process(delta):
	
	move()


		
func create_path():
	
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	
	var new_target_x = rng.randi_range(0, max_distance)
	var new_target_y = rng.randi_range(0, max_distance)
	var exponent_x = rng.randi_range(1,2)
	var exponent_y = rng.randi_range(1,2)
	new_target_x *= pow(-1, exponent_x)
	new_target_y *= pow(-1, exponent_y)

	var new_target = Vector2(position.x+new_target_x, position.y+new_target_y)
	
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
	
	if collision_object != null:
		
		if collision_object.collider.get_collision_layer_bit(1) or collision_object.collider.get_collision_layer_bit(2):
			
			target_pos = create_path()
	
	
func set_position(pos: Vector2) -> void:
	
	position = pos
	target_pos = pos
	
	
	
	
	

