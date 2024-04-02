extends TextureButton

func _on_mouse_entered():
	$ดึ๋ง.play()
	pass # Replace with function body.

func _on_pressed():
	get_tree().change_scene_to_file("res://ซีนต่างๆ/main.tscn")	
	pass # Replace with function body.
	
