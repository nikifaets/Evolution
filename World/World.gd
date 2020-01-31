extends Node2D

var map_len = 2000
var map_height = 2000

var units = []
var units_saved = []
var units_amount
var units_out = 0

func set_units(var units):
	
	self.units = units
	units_amount = units.size()
	var id = 0
	for unit in units:
		
		var unit_meta = unit.find_node("Meta").get_meta_data()
		unit.assign_id(id)
		
		unit.connect("player_out", self, "on_player_out")
		units_saved.append(unit_meta)
		id += 1
		
		add_child(unit)
		
func kill_unit(var unit):
	
	units_out += 1
	unit.queue_free()
	
func register_damage(var unit, var damage):
	
	var id = unit.id
	units_saved[id]["health"] -= damage
	
func on_player_out():
	
	units_out += 1
	if units_out >= units_amount:
		
		print("END SCENE")
		$EndSceneTimer.start()

func _on_EndSceneTimer_timeout():
	
	print("BING")
	$GUILayer/BackButton.set_visible(true)



func _on_BackButton_button_up():
	
	get_parent().set_units_post(units_saved)
	get_parent().load_GUI()
	queue_free()
