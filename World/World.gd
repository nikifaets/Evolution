extends Node2D

var map_len = 2000
var map_height = 2000

var units = []
var units_saved = []
func set_units(var units):
	
	self.units = units
	
	var id = 0
	for unit in units:
		
		var unit_meta = unit.find_node("Meta").get_meta_data()
		unit.assign_id(id)
		
		units_saved.append(unit_meta)
		id += 1
		
		add_child(unit)
		
func kill_unit(var unit):
	
	unit.queue_free()
	for unit in units:
		print(unit)
	print(units.size())
	
func register_damage(var unit, var damage):
	
	var id = unit.id
	units_saved[id]["health"] -= damage
	
	