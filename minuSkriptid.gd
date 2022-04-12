extends Node

var elud = 100
var nimi = "Kaspar"

func _ready():
	print(elud)
	print(nimi)
	print("Nimepikkus "+str(len(nimi)))
	var elud1 = abs(2+elud)
	print("Mängjale lisati 2 elu ja tal on nüüd ",elud1, "elu.")
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var suvaline = round(rng.randf_range(0.0, 19.0))

	print(suvaline)
