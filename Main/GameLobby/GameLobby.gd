extends Node

var StatsContainer = preload("StatsContainer/StatsContainer.tscn")
var WorldScene = preload("res://World/World.tscn")
var GUI = preload("res://Main/GameLobby/LobbyGUI.tscn")

var gui = GUI.instance()
var epochs = 0
var units = []

func _ready():
	
	units = $IndividualsController.create_units()
	$GUI.setup(units)


func _on_StartFight_button_up():
	
	$GUI.queue_free()
	var world = WorldScene.instance()
	add_child(world)
	var counter = 1
	for unit in units:
		
		print(counter, unit)
		add_child(unit)
		counter += 1
	
