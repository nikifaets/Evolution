extends Node

var StatsContainer = preload("StatsContainer/StatsContainer.tscn")
var WorldScene = preload("res://World/World.tscn")
var GUI = preload("res://Main/GameLobby/LobbyGUI.tscn")
var ButtonBackToLobby = preload("res://Main/GameLobby/BackToLobby.tscn")

var world
var gui = GUI.instance()
var epochs = 0
var units = []
var units_post_meta = []

func _ready():
	
	units = $IndividualsController.create_units()
	
	var units_meta = []
	for unit in units:
		
		var meta = unit.find_node("Meta").get_meta_data()
		units_meta.append(meta)
		
	$GUI.setup(units_meta)


func _on_StartFight_button_up():
	
	world = WorldScene.instance()
	$GUI.queue_free()
	add_child(world)
	world.set_units(units)

func _on_IndividualsController_all_units_out():
	print("all out")
	$BackToLobby.set_visible(true)

func _on_Button_button_up():
	
	add_child(gui)
	gui.setup(units_post_meta)
	world.queue_free()
	
func kill_unit(unit):
	
	var meta = unit.find_node("Meta").get_meta_data()
	units_post_meta.append(meta)

