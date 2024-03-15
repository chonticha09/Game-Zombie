extends TextureButton


var texture_rect_nodes: Array
var current_texture_index: int = 0

func _ready():
	# Find TextureRects in the scene and store them in an array
	texture_rect_nodes = [
		get_node("ซูชิกุ้ง2"),
		get_node("ซูชิทูน่า"),
		get_node("ซูชิไข่หวาน")
	]
	# Hide all TextureRects
	hide_all_texture_rects()

# Function to load mango texture
func load_ข้าว_texture(texture_rect: TextureRect) -> void:
	var texture1 = preload("res://ร้านอาหารญี่ปุ่น/ข้าว.png")
	texture_rect.texture = texture1

# When the button is pressed (load mango texture)
func _on_pressed():
	show_next_ข้าว_texture()

func show_next_ข้าว_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_ข้าว_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
	else:
		print("All TextureRects have been shown.")

func hide_all_texture_rects():
	for texture_rect in texture_rect_nodes:
		texture_rect.visible = false


