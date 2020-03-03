extends AnimatedSprite

func _ready():
	
	play("Idle")

func _on_AnimationControl_animation_finished():
	
	play("Idle")


func _on_AutoAttack():
	
	play("MeleeAttack")
