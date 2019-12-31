extends NinePatchRect

func _ready():
	
	self.rect_size = $ScrollContainer/VBoxContainer.call_deferred("get_size")
	self.rect_position = $ScrollContainer/VBoxContainer.call_deferred("get_position")
	
