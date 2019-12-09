extends Node2D

var owner_unit 

func _ready():
	
	owner_unit = get_parent()
	$Attack/FireBomb.owner_unit = self.owner_unit
	$Attack/AutoAttack.owner_unit = self.owner_unit
