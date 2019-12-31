extends "../FollowerSpell.gd"
var is_cast = false
var damage
var collided = false
var collision_count = 0
	
func deal_damage():
		
		target.take_damage(damage)
		queue_free()
	
func set_target(target: KinematicBody2D):
	
	self.target = target
	self.target_id = target.get_instance_id()


func _on_Range_body_entered(body):
	
	
	if body.get_instance_id() == target_id:
		call_deferred("deal_damage")
	pass
