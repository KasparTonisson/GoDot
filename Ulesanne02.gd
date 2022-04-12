#Ülesanne02
#Kaspar Tõnisson

extends Node

var raha=2000
var coca = 2100


#Pood
func _ready():
	if coca >= raha:
		print("Sa ei saa cocat osta, kuna sa oled vaene")
		var puudu = coca - raha
		print("Sul jääb puudu ",puudu,"€") 
	else:
		print("Sa oled narkomaan, kuna sul on raha")

#Ruut ja ristkülik
	var kulg1 = 5
	var kulg2 = 6
	var arvutamine = kulg1 * kulg2
	if kulg1 == kulg2:
		print("Ruudu pindala on ",arvutamine)
	else:
		print("Ristküliku pindala on ",arvutamine)
