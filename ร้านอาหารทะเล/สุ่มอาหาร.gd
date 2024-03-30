extends Control

# List of image paths for seafood items
var seafood_images: Array = [
	"res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/เมนูอาหารทะเล/จานผักซอสปลา.png",
	"res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/เมนูอาหารทะเล/จานผักมะนาวซอสปลา.png",
	"res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/เมนูอาหารทะเล/จานเนื้อผักมะเขือ.png"
]

# Called when the node enters the scene tree for the first time.
func _ready():
	# Replace with function body.
	# Randomize and set image from the list of seafood images
	randomize_seafood_image()

# Function to randomize and set image from the list of seafood images
func randomize_seafood_image() -> void:
	# Check if there are images in the list
	if seafood_images.size() > 0:
		# Generate a random index within the range of available images
		var random_index = randi() % seafood_images.size()
		
		# Load the image from the randomly selected path
		var image_texture = load(seafood_images[random_index])
		
		# Set the loaded texture to the TextureRect
		if image_texture != null:
			# Assuming there's a TextureRect node named "TextureRect" under this Control node
			var texture_rect = $TextureRect
			texture_rect.texture = image_texture
		else:
			print("Failed to load image from path:", seafood_images[random_index])
	else:
		print("No seafood images available!")
