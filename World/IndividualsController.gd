extends Node
var Individual = load("res://Individual/Individual.tscn")

export var individuals_amount = 2

func _ready():
	
	for i in range(0, individuals_amount):
		
		call_deferred("create_unit")
			
	
func create_unit() -> void:
	
	var length = owner.map_len  
	var height = owner.map_height
	
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var unit_x = rng.randi_range(50, length-50)
	var unit_y = rng.randi_range(50, height-50)
	
	var unit = Individual.instance()
	unit.set_boundaries(length, height)
	unit.set_position(Vector2(unit_x, unit_y))
	unit.connect("player_out", self, "on_player_out")
	add_child(unit)
	
	
func on_player_out():
	
	pass
	#print("player out")