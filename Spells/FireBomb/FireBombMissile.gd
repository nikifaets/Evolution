extends "../FollowerSpell.gd"
var is_cast = false
var damage
var collided = false

func _ready():
	
	connect("target_reached", self, "on_collision")
	
func on_collision():
	
	queue_free()
	collided = true
	
	

	
	

