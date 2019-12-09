extends AnimatedSprite

func _ready():
	
	play("Idle")
	
func _on_MeleeAttack_melee_attack():
	
	play("MeleeAttack")


func _on_AnimationControl_animation_finished():
	
	play("Idle")
