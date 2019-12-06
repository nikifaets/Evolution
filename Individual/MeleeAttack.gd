extends Node
var AutoAttack = preload("../Spells/AutoAttack/AutoAttack.tscn")
signal melee_attack

func _on_MeleeAttackRange_body_entered(body):
	
	if body.get_collision_layer_bit(0) and body != owner:
		
		var attack = AutoAttack.instance()
		owner.get_parent().add_child(attack)
		emit_signal("melee_attack")
		attack.cast(owner, body)
	
