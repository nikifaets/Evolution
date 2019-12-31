extends Node

var StatsContainer = preload("res://Main/GameLobby/StatsContainer/StatsContainer.tscn")

func setup(units_meta):
	for meta in units_meta:
		
		var stats_container = StatsContainer.instance()
		stats_container.set_unit(meta)
		$ScrollContainer/VBoxContainer.add_child(stats_container)