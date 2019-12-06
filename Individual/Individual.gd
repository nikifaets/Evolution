extends KinematicBody2D

export var strength = 0
export var intelligence = 0

export var health = 100
export var ranged_damage = 20
export var melee_damage = 10
export var speed = 10

func take_damage(dmg):
	
	$Stats.take_damage(dmg)
	
	
	
	
	

