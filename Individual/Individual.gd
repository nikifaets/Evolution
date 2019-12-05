extends KinematicBody2D

export var health = 100
export var ranged_damage = 20
export var speed = 10

func _physics_process(delta):
	
	$Movement.move()
	
func take_damage(dmg):
	
	$Stats.take_damage(dmg)
		
	
	
	
	
	

