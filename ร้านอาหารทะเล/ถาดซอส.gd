extends TextureButton

var texture_rect_nodes: Array
var current_texture_index: int = 0

func _ready():
	# Find TextureRects in the scene and store them in an array
	texture_rect_nodes = [
		get_node("ซอส1"),
		get_node("ซอส2"),
		get_node("ซอส3") # เพิ่ม TextureRect ที่ต้องการแสดงรูปภาพเข้ามาที่นี่
	]
	# Hide all TextureRects
	hide_all_texture_rects()

# Function to load mango texture
func load_mango_texture(texture_rect: TextureRect, index: int) -> void:
	if index == 0:
		var texture1 = preload("res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/เมนูอาหารทะเล/จานผักซอสปลา.png")
		texture_rect.texture = texture1
	elif index == 1:
		var texture2 = preload("res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/เมนูอาหารทะเล/จานผักมะนาวซอสปลา.png")
		texture_rect.texture = texture2
	elif index == 2: # เพิ่มเงื่อนไขเพื่อโหลดรูปภาพในลำดับที่ 3
		var texture3 = preload("res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/เมนูอาหารทะเล/จานเนื้อมะเขื่อเทศซอส.png") # ระบุเส้นทางของไฟล์รูปภาพที่ต้องการโหลด
		texture_rect.texture = texture3

# When the button is pressed (load mango texture)
func _on_pressed():
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
