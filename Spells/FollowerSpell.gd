extends "Spell.gd"

var speed
var direction
signal target_reached

func _physics_process(delta):
	
	follow_target(target)
	
func follow_target(target: KinematicBody2D):
	
	print("following target")
	direction = target.position - position
	collider = move_and_collide(direction.normalized()*speed)
	
	if collider.id == target.id:
		emit_signal("target_reached")
	
	
	
	


