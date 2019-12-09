extends ProgressBar

var offset = Vector2(0,20)
func _ready():
	
	max_value = get_parent().health
	value = get_parent().health
	
func _process(delta):
	
	#print("healthbar, parent: ", get_parent().filename)
	value = get_parent().health

	set_position(owner.position - offset)
	