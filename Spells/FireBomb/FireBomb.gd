extends "../Spell.gd"

var FireBombMissile = preload("FireBombMissile.tscn")

var is_cast = false
var missile

func cast(caster: KinematicBody2D, target: KinematicBody2D):
	
	if is_cast == true:
		return
	
	if target.filename.find("Missile") > -1:
		print("cast in firebomb, target: ", target.filename)
	missile = FireBombMissile.instance()
	missile.position = caster.position
	missile.damage = caster.ranged_damage
	missile.set_target(target)
	
	caster.get_parent().call_deferred("add_child", missile)
	$Cooldown.start()

	is_cast = true

func _on_Cooldown_timeout():
	
	is_cast = false
