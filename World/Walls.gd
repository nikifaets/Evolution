extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	
	call_deferred("print_ids")


func print_ids():
	
	print("PRINTING ALL IDS IN WALLS")
	var nodes = get_children()
	for i in nodes:
		print(i, i.filename)