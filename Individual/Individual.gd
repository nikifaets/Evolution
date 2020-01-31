extends KinematicBody2D

signal player_out
var speed
var id
var active = true

func _ready():
	
	speed = $Meta.meta["speed"]
	$BaseClass.owner_unit = self

func take_damage(var damage):
	
	$Meta.meta["health"] -= damage
	
	get_parent().register_damage(self, damage)
	
	if $Meta.meta["health"] <= 0:
		die()
	
func die():
	
	get_parent().kill_unit(self)
	
func set_boundaries(map_len, map_height):
	
	$Movement.map_len = map_len
	$Movement.map_height = map_height
	
func assign_id(var id):
	
	self.id = id
	

