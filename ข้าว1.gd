extends TextureButton

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Called when the TextureButton is pressed.
func _on_pressed():
	# Remove the TextureButton node from its parent.
	
	queue_free()

