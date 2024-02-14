extends Sprite2D

func _ready():
	# Connect the input event to the _on_input function
	connect("input_event", self, "_on_input")

# Function called when there is an input event
func _on_input(event):
	# Check if the event is a mouse button press
	if event is InputEventMouseButton and event.pressed:
		# Check if the mouse click is within the bounds of the sprite
		if get_global_mouse_position().distance_to(global_position) < rect_size.x / 2:
			# Change the sprite image
			change_sprite()

# Function to change the sprite image
func change_sprite():
	# Load a new texture (replace "res://path/to/new_image.png" with the path to your new image)
	var new_texture = preload(""res://ร้านพิซซ่า/ร้านพิซซ่าใหม่/แก้วน้ำ.png"")
	
	# Set the new texture to the sprite
	set_texture(new_texture)
