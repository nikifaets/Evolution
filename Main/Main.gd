extends Node2D
var GameLobby = preload("GameLobby/GameLobby.tscn") 


func _on_MainStartButton_button_up():
	
	$MainStartButton.queue_free()
	var lobby = GameLobby.instance()
	add_child(lobby)
