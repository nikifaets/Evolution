extends Node

var StatsContainerRoot = preload("res://Main/GameLobby/StatsContainer/StatsContainerRoot.tscn")
var stats_containers = []
var page = 0

func add_container(units_meta):

	var stats_container = StatsContainerRoot.instance()
	stats_container.set_units(units_meta)
	add_child(stats_container)
	stats_containers.append(stats_container)
	
	print(stats_containers.size())
	
	load_container(page)

func load_container(var idx):
	
	print("load ", idx)
	for container in stats_containers:
		
		container.set_visible(false)
		container.set_v_scroll(0)
		container.set_h_scroll(0)
		
	stats_containers[idx].set_visible(true)
	
func _on_MoveRight_button_up():
	
	if page < stats_containers.size()-1:
		page += 1
		load_container(page)


func _on_MoveLeft_button_up():
	
	if page > 0:
		page -= 1
		load_container(page)
