extends VBoxContainer

var Individual = preload("res://Individual/Individual.tscn")



func fill_containers(meta):
	
	var class_label = meta.get("class_label")
	 
	$VBoxContainer/Head/TextureRect.set_image(class_label)
	$VBoxContainer/Head/Class.set_text("Class: " + class_label)
	
	var melee = meta["melee_damage"]
	var health = meta["health"]
	
	$VBoxContainer/Stats/Melee.set_text("melee: " + str(melee))
	$VBoxContainer/Stats/Intellect.set_text("health: " + str(health))
	
	$VBoxContainer/HealthBar.set_value(health)
	
func test():
	
	var unit = Individual.instance()
	var meta = unit.find_node("Meta").get_meta_data()
	
	fill_containers(meta)