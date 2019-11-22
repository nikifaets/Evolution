extends "../FollowerSpell.gd"
var is_cast = false
var damage
var collided = false

func _ready():
	
	connect("target_reached", self, "on_collision")
	
func _physics_process(delta):
	

	if is_instance_valid(target):
		
		follow_target()
	else:
		queue_free()
		
func on_collision():
	
	call_deferred("deal_damage")
	
func deal_damage():
	
	target.find_node("Stats").take_damage(damage)

	queue_free()

	
	
	

	
	

