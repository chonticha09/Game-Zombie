extends TextureButton

var texture_rect_nodes: Array
var current_texture_index: int = 0

func _ready():
	# Find TextureRects in the scene and store them in an array
	texture_rect_nodes = [
		get_node("พุดช้อค"),
		get_node("สตอช้อค"),
		get_node("ส้มช้อค"),
		get_node("กีวี่ช้อค"),
		get_node("องุ่นช้อค"),
		get_node("สตอช้อค")
	]
	# Hide all TextureRects
	hide_all_texture_rects()

# Function to load mango texture
func load_พุด_texture(texture_rect: TextureRect) -> void:
	var texture1 = preload("res://ร้านผลไม้/พุดช๊อก.png")
	texture_rect.texture = texture1

func load_สตอ_texture(texture_rect: TextureRect) -> void:
	var texture1 = preload("res://ร้านผลไม้/สตอช๊อก.png")
	texture_rect.texture = texture1
	
func load_ส้ม_texture(texture_rect: TextureRect) -> void:
	var texture1 = preload("res://ร้านผลไม้/ส้มช๊อก.png")
	texture_rect.texture = texture1
	
func load_กีวี่_texture(texture_rect: TextureRect) -> void:
	var texture1 = preload("res://ร้านผลไม้/กี่วี่ช๊อก.png")
	texture_rect.texture = texture1
	
func load_องุ่น_texture(texture_rect: TextureRect) -> void:
	var texture1 = preload("res://ร้านผลไม้/องุ่นช๊อก.png")
	texture_rect.texture = texture1

# When the button is pressed (load mango texture)
func _on_pressed():
	$เสียงกด.play()
	show_next_พุด_texture()
	show_next_สตอ_texture()
	show_next_ส้ม_texture()
	show_next_กีวี่_texture()
	show_next_องุ่น_texture()

func show_next_พุด_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_พุด_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
		
func show_next_สตอ_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_สตอ_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
		
func show_next_ส้ม_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_ส้ม_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
		
func show_next_กีวี่_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_กีวี่_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
		
func show_next_องุ่น_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_องุ่น_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
	else:
		# Reset index and hide all TextureRects when all textures have been shown
		current_texture_index = 0
		hide_all_texture_rects()

func hide_all_texture_rects():
	for texture_rect in texture_rect_nodes:
		texture_rect.visible = false
