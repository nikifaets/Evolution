extends ProgressBar

var offset = Vector2(0,20)
func _ready():
	
	max_value = get_parent().find_node("Meta").health
	value = max_value
	
func _process(delta):
	

	value = get_parent().find_node("Meta").health

	#set_position(owner.position - offset)
	