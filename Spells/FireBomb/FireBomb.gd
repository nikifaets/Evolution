extends "../Spell.gd"

var FireBombMissile = preload("FireBombMissile.tscn")

var can_cast = true
var missile
var owner_unit = get_parent()

func _process(delta):
	
	if $Range.targets_in_range.size() > 0:
		
		var target = $Range.targets_in_range[0]
		cast_spell(target)
	
func cast_spell(target: KinematicBody2D):
		
	#print("casting against target: ", target)
	cast(owner_unit, target)
	


func cast(caster, target):
	
	if can_cast == false:
		return

	missile = FireBombMissile.instance()
	missile.position = caster.position
	missile.damage = caster.find_node("Stats").ranged_damage
	missile.set_target(target)
	
	get_tree().get_root().call_deferred("add_child", missile)
	$Cooldown.start()

	can_cast = false

func _on_Cooldown_timeout():
	
	can_cast = true
