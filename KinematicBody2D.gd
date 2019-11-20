extends KinematicBody2D

var area_length
var area_height
var max_distance

export var EPSILON_DISTANCE = 2
export var speed = 5

var target_pos = Vector2()
	
func _ready():
	

	target_pos = Vector2(100,100)
	
func _physics_process(delta):
	

	
	if(position.distance_to(target_pos) > EPSILON_DISTANCE):
		
		var direction = target_pos - position
		var velocity = move_and_slide(direction.normalized()*speed)

		position += velocity
		
func create_path():
	
	

