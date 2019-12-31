extends Node

var class_label = "BaseClass"

export var strength = 0
export var intellect = 0

export var health = 100
export var ranged_damage = 10
export var melee_damage = 5
export var speed = 10

func get_meta_data():
	
	var meta = []
	meta.append(class_label)
	meta.append(melee_damage)
	meta.append(intellect)
	
	return meta