extends TextureRect

func set_image(class_label):
	
	var path = "res://Sprites/" + class_label + "/idle.png"

	texture = load(path)


