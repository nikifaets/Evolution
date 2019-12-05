extends ProgressBar

var offset = Vector2(0,20)
func _ready():
	
	max_value = owner.health
	value = owner.health
	
func _process(delta):
	
	value = owner.health
	set_position(owner.position - offset)
	