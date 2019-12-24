extends VBoxContainer

var Individual = preload("res://Individual/Individual.tscn")
var class_label

func _ready():
	
	var unit = Individual.instance()
	var unit_class = unit.find_node("Class")

		
	var class_label = unit_class.class_label
	
	$Head/TextureRect.set_image(class_label)
	$Head/Class.set_text("Class: " + class_label)
	
	var stats = unit_class.find_node("Stats")
	var melee = stats.melee_damage
	var intellect = stats.intellect
	
	$Stats/Melee.set_text("melee: " + str(melee))
	$Stats/Intellect.set_text("intellect: " + str(intellect))
	
