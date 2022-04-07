extends Node

var elud = 100
var vastane = 100


func _ready():
	
	while vastane >= 0 or elud >= 0:
		randomize()
		var dmg = round(rand_range(8,15))
		randomize()
		var damage = round(rand_range(10,17))
		print('P1 Hit: ',dmg,' P2 elud: ',vastane)
		print('P2 Hit: ',damage,' P1 elud: ',elud)
		vastane -= dmg
		elud -= damage
	print()
	if vastane > elud:
		print('Mängija 1 võitis!')
	else:
		print('Mängija 2 võitis!')

