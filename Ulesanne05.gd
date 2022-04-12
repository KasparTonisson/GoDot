extends Node

var punktid = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]



func tunnid():
	
	var tunnid = 67
	var tunnitasu = 4
	if tunnid >= 40:
		var tasu=tunnid*tunnitasu
		print(tasu)
	else:
		var tasu = 40*tunnitasu+(tunnid-40)*1.5*tunnid
func _ready():
	tunnid()
	var pikkus = len(punktid)
	var summa = 0
	for i in punktid:
		summa += i
	var keskmine = summa / pikkus
	print("Kesmine punktide summa on:", keskmine)
	print(punktid)
	for i in punktid:
		if i >= 90:
			print(i,": 5")
		elif i >= 75:
			print(i, ": 4")
		elif i >= 50:
			print(i, ": 3")
		else:
			print(i, ": 2")	
		
		
	
