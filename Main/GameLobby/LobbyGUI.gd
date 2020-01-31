extends Node

var StatsContainerRoot = preload("res://Main/GameLobby/StatsContainer/StatsContainerRoot.tscn")
var stats_containers = []

func add_container(units_meta):

	var stats_container = StatsContainerRoot.instance()
	stats_container.set_units(units_meta)
	add_child(stats_container)
	stats_containers.append(stats_container)
	
	if stats_containers.size() > 1:
		
		stats_container.set_visible(false)