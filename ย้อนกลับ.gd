extends TextureButton

var previous_screen_path: String

func _ready():
	previous_screen_path = get_tree().get_previous_scene().get_path()

func _on_pressed():
	if previous_screen_path != "res://ร้านถังหูลู่.tscn":
		get_tree().change_scene("res://ร้านถังหูลู่.tscn")
