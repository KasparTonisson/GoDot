extends Node


func _ready():
	
	pass
	
func _process(delta):
	var ammo = $"Node".ammo
	var elud = $"Node".elud
	var skoor = $"Node".skoor
	var vastanehp = $"Node".vastanehp
	
	
	$"Draakon/TextureRect/Ammo".text = "AMMO: "+str(ammo)
	$"Draakon/TextureRect/Health".text = "HEALTH: "+str(elud)
	$"Draakon/TextureRect/Skoor".text = "SKOOR: "+str(skoor)
	if Input.is_action_just_pressed("lase"):
		$"Draakon/TextureRect/Laskmine".text = "SHOOTING"
		
	if Input.is_action_just_pressed("reload"):
		$"Draakon/TextureRect/Laskmine".text = "RELOADING"
	if vastanehp <= 0:
		$"Draakon/TextureRect/Voit".text = "VICTORY" 
		$"Draakon/TextureRect/Ammo".text = " "
		$"Draakon/TextureRect/Health".text = " "
		$"Draakon/TextureRect/Skoor".text = " "
		$"Draakon/TextureRect/Laskmine".text = " "
		
	if elud <= 0:
		$"Draakon/TextureRect/Kaotus".text = "GAME OVER" 
		$"Draakon/TextureRect/Ammo".text = " "
		$"Draakon/TextureRect/Health".text = " "
		$"Draakon/TextureRect/Skoor".text = " "
		$"Draakon/TextureRect/Laskmine".text = " "
