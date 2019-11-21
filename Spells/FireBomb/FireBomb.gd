extends "../FollowerSpell.gd"

func _ready():
	
	connect("deal_damage", self, "target_reached")
	
func cast(caster: KinematicBody2D, target: KinematicBody2D):
	
	caster.owner.add_child(self)
	damage = caster.RANGED_DAMAGE
	
func deal_damage(target: KinematicBody2D):
	
	target.take_damage(damage)
	
	

	
	

