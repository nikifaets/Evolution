extends "../Spell.gd"

var FireBombMissile = preload("FireBombMissile.tscn")

var can_cast = false
var missile

func cast(caster: KinematicBody2D, target: KinematicBody2D):
	
	if can_cast == true:
		return
		
	missile = FireBombMissile.instance()
	missile.position = caster.position
	missile.damage = caster.ranged_damage
	missile.set_target(target)
	
	caster.get_parent().call_deferred("add_child", missile)
	$Cooldown.start()

	can_cast = true

func _on_Cooldown_timeout():
	
	can_cast = false
