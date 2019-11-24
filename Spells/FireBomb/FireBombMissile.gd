extends "../FollowerSpell.gd"
var is_cast = false
var damage
var collided = false


func _ready():
	
	connect("target_reached", self, "on_collision")
	
func _physics_process(delta):
	
	
	if is_instance_valid(target) and target.get_instance_id() == target_id:
			
		follow_target()
		
	else:
		
		queue_free()
		
func on_collision():
	
	call_deferred("deal_damage")
	
func deal_damage():
	
	if is_instance_valid(target):
		
		if target.filename.find("Missile") > -1:
			print(target.get_instance_id(), self.get_instance_id(), target.position, target.filename)
	
		target.find_node("Stats").take_damage(damage)
		queue_free()
	
func set_target(target: KinematicBody2D):
	
	self.target = target
	self.target_id = target.get_instance_id()

