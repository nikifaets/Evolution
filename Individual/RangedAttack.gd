extends Node
var FireBomb = preload("res://Spells/FireBomb/FireBomb.tscn")
var target
var fire_bomb = FireBomb.instance()


	
func _on_RangedAttackRange_body_entered(body):
	
	
	if body.get_collision_layer_bit(0):
		
		cast_spell(body)

func cast_spell(target: KinematicBody2D):
	
	if fire_bomb.is_cast == false:

		fire_bomb.cast(owner, target)
	
	
	pass