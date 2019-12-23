extends Node2D
var GameWorld = preload("res://World/World.tscn") 


func _on_MainStartButton_button_up():
	
	$MainStartButton.queue_free()
	var world = GameWorld.instance()
	add_child(world)
