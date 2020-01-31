extends Node2D

var speed = 12
var direction
export var epsilon_distance = 5
var target = null
var target_id
var distance

	
func _physics_process(delta):
	
	if is_instance_valid(target) and target.get_instance_id() == target_id:
			
		follow_target()
		
	else:
		
		queue_free()
	
func follow_target():
	
	direction = (target.position - position)
	var velocity = direction.normalized()*speed
	position += velocity
	distance = position.distance_to(target.position)
	
	
	

	
	
	
	


