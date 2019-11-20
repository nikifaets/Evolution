extends Node
var Individual = load("res://Individual.tscn")

export var INDIVUDUALS_AMOUNT = 10

func _ready():
	
	for i in range(0, INDIVUDUALS_AMOUNT):
		call_deferred("create_unit")
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func create_unit() -> void:
	
	var length = owner.get_viewport_rect().size.y
	var height = owner.get_viewport_rect().size.x
	
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var unit_x = rng.randi_range(0, length)
	var unit_y = rng.randi_range(0, height)
	
	
	var unit = Individual.instance()
	unit.set_position(Vector2(unit_x, unit_y))
	get_parent().add_child(unit)
	print(unit.position)