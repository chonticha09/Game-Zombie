extends TextureButton

var audio_enabled = true

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
