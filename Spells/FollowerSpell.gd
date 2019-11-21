extends KinematicBody2D

var speed = 4
var direction
signal target_reached
export var epsilon_distance = 2
var target = null

func _physics_process(delta):
	
	if target != null:
		
		follow_target(target)
	
func follow_target(target: KinematicBody2D):
	
	self.target = target
	direction = target.position - position
	var velocity = move_and_slide(direction.normalized()*speed)
	position += velocity
	
	if position.distance_to(target.position) < epsilon_distance:
		

		emit_signal("target_reached")

	
	
	
	


