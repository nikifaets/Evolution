extends "../Spell.gd"

var can_attack = true
func cast(caster: KinematicBody2D, target: KinematicBody2D):
	
	if can_attack:
		
		damage = caster.melee_damage
		deal_damage(target)
		
		can_attack = false
		$Cooldown.start()
	
func deal_damage(target: KinematicBody2D):
	
	target.take_damage(damage)


func _on_Cooldown_timeout():

	can_attack = true
