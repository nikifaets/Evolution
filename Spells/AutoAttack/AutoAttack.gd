extends "../Spell.gd"

var can_attack = true
var owner_unit = get_parent()

func cast(caster, target):
	
	if can_attack:
		
		damage = caster.find_node("Stats").melee_damage
		deal_damage(target)
		
		can_attack = false
		$Cooldown.start()
	
func deal_damage(target):
	
	target.take_damage(damage)


func _on_Cooldown_timeout():

	can_attack = true


func _on_Range_body_entered(body):
			
		if body.get_collision_layer_bit(0) and body != owner_unit:
			cast(owner, body)
	
