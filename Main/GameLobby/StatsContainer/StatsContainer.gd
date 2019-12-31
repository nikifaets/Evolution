extends VBoxContainer

var unit
var unit_meta

func set_unit(unit):
	
	self.unit = unit
	unit_meta = unit.find_node("Meta")
	fill_containers()

func fill_containers():
	
	var class_label = unit_meta.class_label
	 
	$Head/TextureRect.set_image(class_label)
	$Head/Class.set_text("Class: " + class_label)
	
	var melee = unit_meta.melee_damage
	var intellect = unit_meta.intellect
	
	$Stats/Melee.set_text("melee: " + str(melee))
	$Stats/Intellect.set_text("intellect: " + str(intellect))
	
