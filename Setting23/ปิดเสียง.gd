extends TextureButton
var audio_enabled = true
var is_clicked = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass  # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _on_pressed():
	if audio_enabled:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), true)
		audio_enabled = false
	else:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), false)
		audio_enabled = true

	# เปลี่ยนรูปภาพของ TextureButton เมื่อถูกคลิก
	if is_clicked:
		texture_normal = load("res://เพิ่มเติม/Sound(1)_0.png")
	else:
		texture_normal = load("res://เพิ่มเติม/Sound(2)_0.png")

	is_clicked = not is_clicked
