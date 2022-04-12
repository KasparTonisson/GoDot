extends Node

var nimed = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin","Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins","Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey","Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]

func _ready():
	print("Mängijaid on ",len(nimed))
	print("Esimene nimi on ",nimed[0])
	print()
	var smallest = nimed.min()
	nimed.erase("Reyes")
	nimed.append("Kaspar")
	var biggest = nimed.max()
	print()
	print("Lühim nimi on: ",smallest)
	print("Pikim nimi on: ",biggest)
	nimed.sort()
	
	
	var player = {"Gold":5, "Health":100}
	for i in range(5):
		player.Gold += 5
		print("Mängijal on ",player.Gold,"kulda.")
