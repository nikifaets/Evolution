extends Area2D

var targets_in_range = []


func _on_Range_body_entered(body):
	

	if body.active and body != owner.owner_unit:
		
		targets_in_range.append(body)



func _on_Range_body_exited(body):
	
	if body != owner.owner_unit:
		
		targets_in_range.erase(body);
