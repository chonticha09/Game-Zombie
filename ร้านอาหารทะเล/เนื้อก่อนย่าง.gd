extends TextureButton

var texture_rect_nodes: Array
var current_texture_index: int = 0

func _ready():
	# Find TextureRects in the scene and store them in an array
	texture_rect_nodes = [
		get_node("Control3/เนื้อย่าง1"),
		get_node("Control4/เนื้อย่าง2")
	]
	# Hide all TextureRects
	hide_all_texture_rects()

# Function to load mango texture
func load_mango_texture(texture_rect: TextureRect) -> void:
	var texture1 = preload("res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/เนิ้อสุก.png")
	texture_rect.texture = texture1

# When the button is pressed (load mango texture)
func _on_pressed():
	$เสียงย่าง.play()
	show_next_mango_texture()

func show_next_mango_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_mango_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
	else:
		# Reset index and hide all TextureRects when all textures have been shown
		current_texture_index = 0
		hide_all_texture_rects()

func hide_all_texture_rects():
	for texture_rect in texture_rect_nodes:
		texture_rect.visible = false
