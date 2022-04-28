extends Node


var vastane = 0
var skoor = 0
func _ready():
	pass 

func _process(delta):
	vastane = round(rand_range(1,3))
	

	
func _on_Kivi_pressed():
	pass
	$"hr8/Minu_valik".text = "Valik :KIVI"
	if vastane == 1:
		print()
		$"hr8/Vastane_valik".text = "AI :KIVI"
		print("Vastane valis kivi")
		print("Viik")
		print("Skoor:", skoor)
		$"hr8/Skoor".text = "SKOOR: "+str(skoor)
		
	elif vastane == 2:
		$"hr8/Vastane_valik".text = "AI :PABER"
		print()
		print("Vastane valis paberi")
		print("Said üle")
		print("Skoor:", skoor)
		skoor = 0
		$"hr8/Skoor".text = "SKOOR: "+str(skoor)
	elif vastane == 3:
		$"hr8/Vastane_valik".text = "AI :KÄÄRID"
		print()
		print("Vastane valis käärid")
		print("Võitsid")
		skoor += 1
		print("Skoor:", skoor)
		$"hr8/Skoor".text = "SKOOR: "+str(skoor)
	
func _on_Paber_pressed():
	pass
	$"hr8/Minu_valik".text = "Valik :PABER"
	print("Paber")
	if vastane == 1:
		$"hr8/Vastane_valik".text = "AI :KIVI"
		print()
		print("Vastane valis kivi")
		print("Võitsid")
		skoor += 1
		print("Skoor:", skoor)
		$"hr8/Skoor".text = "SKOOR: "+str(skoor)
	elif vastane == 2:
		$"hr8/Vastane_valik".text = "AI :PABER"
		print()
		print("Vastane valis paberi")
		print("Viik")
		print("Skoor:", skoor)
		$"hr8/Skoor".text = "SKOOR: "+str(skoor)
	elif vastane == 3:
		$"hr8/Vastane_valik".text = "AI :KÄÄRID"
		print()
		print("Vastane valis käärid")
		print("Said üle")
		print("Skoor:", skoor)
		skoor = 0
		$"hr8/Skoor".text = "SKOOR: "+str(skoor)
	

func _on_Krid_pressed():
	pass
	$"hr8/Minu_valik".text = "Valik :KÄÄRID"
	print("Käärid")
	
	if vastane == 1:
		$"hr8/Vastane_valik".text = "AI :KIVI"
		print()
		print("Vastane valis kivi")
		print("Said üle")
		print("Skoor:", skoor)
		skoor = 0
		$"hr8/Skoor".text = "SKOOR: "+str(skoor)
	elif vastane == 2:
		$"hr8/Vastane_valik".text = "AI :PABER"
		print()
		print("Vastane valis paberi")
		print("Võitsid")
		skoor += 1
		print("Skoor:", skoor)
		$"hr8/Skoor".text = "SKOOR: "+str(skoor)
	elif vastane == 3:
		$"hr8/Vastane_valik".text = "AI :KÄÄRID"
		print()
		print("Vastane valis käärid")
		print("Viik")
		print("Skoor:", skoor)
		$"hr8/Skoor".text = "SKOOR: "+str(skoor)
func _on_Uuesti_pressed():
	get_tree().reload_current_scene()
	print("UUS MÄNG")



