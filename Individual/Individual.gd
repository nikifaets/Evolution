extends KinematicBody2D

var speed
signal player_out

func _ready():
	
	speed = $Meta.speed
	$BaseClass.owner_unit = self

func take_damage(var damage):
	
	$Meta.health -= damage

	if $Meta.health <= 0:
		die()
	
func die():
	
	get_parent().kill_unit(self)
	emit_signal("player_out")
	queue_free()
	
func set_boundaries(map_len, map_height):
	
	$Movement.map_len = map_len
	$Movement.map_height = map_height
	

