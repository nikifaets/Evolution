extends Node
var FireBomb = preload("res://Spells/FireBomb/FireBomb.tscn")

var fire_bomb = FireBomb.instance()
	
func _ready():
	
	owner.get_parent().add_child(fire_bomb)

func _process(delta):
	
	if $RangedAttackRange.targets_in_range.size() > 0:
		
		var target = $RangedAttackRange.targets_in_range[0]
		cast_spell(target)
	
func cast_spell(target: KinematicBody2D):

		fire_bomb.cast(owner, target)
	
