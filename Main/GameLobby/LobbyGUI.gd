extends Node

var StatsContainer = preload("res://Main/GameLobby/StatsContainer/StatsContainer.tscn")

func setup(units):
	for unit in units:
		
		var stats_container = StatsContainer.instance()
		stats_container.set_unit(unit)
		$ScrollContainer/VBoxContainer.add_child(stats_container)