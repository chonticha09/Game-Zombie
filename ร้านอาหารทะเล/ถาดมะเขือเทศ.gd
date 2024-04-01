extends TextureButton

var texture_rect_nodes: Array
var current_texture_index: int = 0

func _ready():
	# Find TextureRects in the scene and store them in an array
	texture_rect_nodes = [
		get_node("มะเขือเทศ1"),
		get_node("มะเขือเทศ2")
		
	]
	# Hide all TextureRects
	hide_all_texture_rects()

# Function to load mango texture
func load_mango_texture(texture_rect: TextureRect, index: int) -> void:
	if index == 0:
		var texture1 = preload("res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/มะเขื่อเทศ.png")
		texture_rect.texture = texture1
	elif index == 1:
		var texture2 = preload("res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/เมนูอาหารทะเล/จานเนื้อผักมะเขือ.png")
		texture_rect.texture = texture2

# When the button is pressed (load mango texture)
func _on_pressed():
	$เสียงกด.play()
	show_next_mango_texture()

func show_next_mango_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_mango_texture(current_texture_rect, current_texture_index)
		current_texture_rect.visible = true
		current_texture_index += 1
	else:
		print("All TextureRects have been shown.")

func hide_all_texture_rects():
	for texture_rect in texture_rect_nodes:
		texture_rect.visible = false
