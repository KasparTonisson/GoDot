extends Node
var ammo = 10
var elud = 100
var vastanehp = 100
var damage = 0
var damage2 = 0
var lasud = 0
var skoor = 0
var protsent = 0

func _ready():
	
	pass
	
func _process(delta):
	
	randomize()
	damage = rand_range(1,10)
	randomize()
	damage2 = rand_range(1,9)
	randomize()
	protsent = rand_range(90,100)
	if vastanehp > 0 and elud >0:
		if ammo >= 0:
			
			if Input.is_action_just_pressed("lase"):
				print("Tegid vastasele ", damage, " dmg")
				print("Vastane tegi sulle ", damage2, " dmg")
				lasud = lasud + 1
				elud = elud - damage2
				vastanehp = vastanehp - damage
				
				print()
				print("Sul on ",elud," elu")
				print("Vastasel on ",vastanehp, " elu")
				ammo = ammo-1
				print("Sul on ",ammo,"kuuli.")
				print("__________________________________")
			if ammo < 10:
				if Input.is_action_just_pressed("reload"):
					print("Reloadisid")
					print()
					ammo = 10
	elif elud <= 0:
		print("Game OVER")
		print("Sa lasid ",lasud," kuuli")
		get_tree().paused = true
		
	elif vastanehp <= 0:
		print("VICTORY")
		print("Sa lasid ",lasud," kuuli")
		skoor = lasud*8
		print("Su skoor oli ",skoor," p")
		print("Sa said pihta ",round(protsent),"% laskudest, kuna Madis on loll")
		
		get_tree().paused = true
	
		
