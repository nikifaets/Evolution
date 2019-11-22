extends "../Spell.gd"

var FireBombMissile = preload("FireBombMissile.tscn")

var is_cast = false
var missile

func cast(caster: KinematicBody2D, target: KinematicBody2D):
	
	if is_cast == true:
		return
	
	missile = FireBombMissile.instance()
	missile.position = caster.position
	missile.target = target
	missile.damage = caster.ranged_damage

	caster.get_parent().call_deferred("add_child", missile)
	$Cooldown.start()

	is_cast = true

func _on_Cooldown_timeout():
	
	is_cast = false
