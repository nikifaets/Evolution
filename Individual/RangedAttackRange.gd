extends Area2D

var targets_in_range = []

func _physics_process(delta):
	position = owner.position


func _on_RangedAttackRange_body_entered(body):
	
	if body.get_collision_layer_bit(0) and body != owner:
		
		#print("adding body ", body)
		targets_in_range.append(body)


func _on_RangedAttackRange_body_exited(body):
	
	if body.get_collision_layer_bit(0) and body != owner:
		
		targets_in_range.erase(body);
