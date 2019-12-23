extends Button

var window_height = ProjectSettings.get_setting("display/window/size/height")
var window_width = ProjectSettings.get_setting("display/window/size/width")
var window_size = Vector2(window_width, window_height)

func _ready():
	
	var offset = Vector2(rect_size.x/2, rect_size.y/2)
	set_position(window_size/2 - offset)
	


