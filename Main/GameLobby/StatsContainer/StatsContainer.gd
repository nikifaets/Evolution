extends VBoxContainer

var unit
var meta


func fill_containers(meta):
	
	var class_label = meta.get("class_label")
	 
	$Head/TextureRect.set_image(class_label)
	$Head/Class.set_text("Class: " + class_label)
	
	var melee = meta["melee_damage"]
	var health = meta["health"]
	
	$Stats/Melee.set_text("melee: " + str(melee))
	$Stats/Intellect.set_text("health: " + str(health))
	
