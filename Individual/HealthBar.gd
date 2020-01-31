extends ProgressBar

var offset = Vector2(0,20)
func _ready():
	
	max_value = get_parent().find_node("Meta").get_meta_data()["health"]
	value = max_value
	
func _process(delta):
	

	value = get_parent().find_node("Meta").get_meta_data()["health"]

	