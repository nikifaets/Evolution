extends ScrollContainer
var StatsContainer = preload("res://Main/GameLobby/StatsContainer/StatsContainer.tscn")

func set_units(units_meta):
	
	for meta in units_meta:
		
		var stats_container = StatsContainer.instance()
		stats_container.fill_containers(meta)
		$VBoxContainer.add_child(stats_container)
		
