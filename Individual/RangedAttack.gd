extends Node
var FireBomb = preload("res://Spells/FireBomb/FireBomb.tscn")
var target

func _on_RangedAttackRange_body_entered(body):
	
	print("in range")
	cast_spell(body)

func cast_spell(target: KinematicBody2D):
	
	var fire_bomb = FireBomb.instance()
	owner.get_parent().add_child(fire_bomb)
	fire_bomb.cast(self, target)
	
	
	pass