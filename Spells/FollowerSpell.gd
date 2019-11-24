extends KinematicBody2D

var speed = 6
var direction
signal target_reached
export var epsilon_distance = 2
var target = null
var target_id

func follow_target():

	direction = target.position - position
	var velocity = move_and_slide(direction.normalized()*speed)
	position += velocity
	
	if position.distance_to(target.position) < epsilon_distance:
		
		emit_signal("target_reached")

	
	
	
	


