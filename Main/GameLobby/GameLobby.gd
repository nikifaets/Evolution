extends Node

var StatsContainer = preload("StatsContainer/StatsContainer.tscn")

var epochs = 0
var units = []

func _ready():
	
	$IndividualsController.create_units()
	
	for unit in units:
		
		var stats_container = StatsContainer.instance()
		stats_container.set_unit(unit)
		$GUI/ScrollContainer/VBoxContainer.add_child(stats_container)
