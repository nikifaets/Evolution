extends Node

export var strength = 0
export var intellect = 0

export var health = 100
export var ranged_damage = 10
export var melee_damage = 5
export var speed = 10

signal dead

func take_damage(var damage):
	
	health -= damage

	if health <= 0:
		owner.get_parent().die()
