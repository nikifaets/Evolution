extends Node
var Individual = load("res://Individual/Individual.tscn")
var map_len = 2000
var map_height = 2000
export var individuals_amount = 2

func _ready():
	
	for i in range(0, individuals_amount):
		
		call_deferred("create_unit")
			
func create_unit() -> void:
	
	
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var unit_x = rng.randi_range(50, map_len-50)
	var unit_y = rng.randi_range(50, map_height-50)
	
	var unit = Individual.instance()
	unit.set_boundaries(map_len, map_height)
	unit.set_position(Vector2(unit_x, unit_y))
	unit.connect("player_out", self, "on_player_out")
	owner.units.append(unit)
	
	
func on_player_out():
	
	pass
	#print("player out")