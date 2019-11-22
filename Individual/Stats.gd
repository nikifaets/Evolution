extends Node

func take_damage(var damage):
	
	owner.health -= damage

	if owner.health <= 0:
		owner.queue_free()