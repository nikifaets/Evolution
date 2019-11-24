extends Node
var FireBomb = preload("res://Spells/FireBomb/FireBomb.tscn")

var fire_bomb = FireBomb.instance()
	
func _ready():
	
	owner.get_parent().add_child(fire_bomb)
	
func _on_RangedAttackRange_body_entered(body):
	
	if body.get_collision_layer_bit(0) and owner != body:
		
		if body.filename.find("Missile") > -1:
			print("casting attack against", body.filename)
		cast_spell(body)

func cast_spell(target: KinematicBody2D):

		fire_bomb.cast(owner, target)
	
