extends KinematicBody2D

var speed
signal player_out

func _ready():
	
	speed = $BaseClass.find_node("Stats").speed
	$BaseClass.owner_unit = self

func take_damage(dmg):
	
	$BaseClass.find_node("Stats").take_damage(dmg)
	
func die():
	
	emit_signal("player_out")
	queue_free()
	
func set_boundaries(map_len, map_height):
	
	$Movement.map_len = map_len
	$Movement.map_height = map_height
	

