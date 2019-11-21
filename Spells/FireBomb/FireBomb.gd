extends "../Spell.gd"

var FireBombMissile = preload("FireBombMissile.tscn")

var is_cast = false
var collided = false
var missile

func _physics_process(delta):
	
	if missile.collided:
		deal_damage(target)
		
func cast(caster: KinematicBody2D, target: KinematicBody2D):
	
	if is_cast:
		pass
	
	missile = FireBombMissile.instance()
	missile.position = caster.position
	missile.target = target
	missile.damage = caster.ranged_damage

	caster.get_parent().call_deferred("add_child", missile)
	$Cooldown.start()
	
	
func deal_damage(target: KinematicBody2D):
	
	target = null
	target.take_damage(damage)
	queue_free()
	print("queue_freed")
	
func _on_Cooldown_timeout():
	
	is_cast = false
