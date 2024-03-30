extends TextureRect

# Called when the node enters the scene tree for the first time.
func _ready():
	# Replace with function body.
	# Call the function to randomly set image from TextureRect.
	randomize_image()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Function to randomly set image from TextureRect.
func randomize_image():
	# Get the total number of textures in the TextureRect.
	var num_textures = get_texture_count()
	
	# Check if there are textures available.
	if num_textures > 0:
		# Generate a random index within the range of available textures.
		var random_index = randi() % num_textures
		
		# Set the texture based on the randomly generated index.
		set_texture(get_texture(random_index))
	else:
		print("No textures available in TextureRect!")

# Function to get the total number of textures in the TextureRect.
func get_texture_count() -> int:
	return get_child_count()

# Function to get the texture at a specific index from the TextureRect.
func get_texture(index: int) -> Texture:
	# Get the child node at the specified index.
	var child_node = get_child(index)
	
	# Check if the child node is a TextureRect.
	if child_node is TextureRect:
		# Return the texture of the TextureRect.
		return child_node.texture
	else:
		print("Child node at index", index, "is not a TextureRect!")
		return null
