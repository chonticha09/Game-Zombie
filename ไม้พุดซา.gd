extends TextureRect

var texture_rect_nodes = []
var current_texture_index = 0

func _ready():
	# เพิ่ม TextureRect เข้าไปใน Array
	texture_rect_nodes.append(get_node("ไม้พุดซา2"))
	# ซ่อน TextureRect ทุกตัว
	hide_all_texture_rects()

# ฟังก์ชันเพื่อแสดงภาพและแสดงบน TextureRect
func load_texture(path: String, texture_rect: TextureRect) -> void:
	var texture = preload("res://ร้านผลไม้/พุดซาไม้.png")
	if texture:
		texture_rect.texture = texture
	else:
		print("Failed to load texture from path:", path)

# เมื่อปุ่มถูกกด
func _on_button_pressed():
	$เสียงกด.play()
	# ซ่อน TextureRect ปัจจุบัน
	hide()
	# เพิ่มค่าดัชนี TextureRect และตรวจสอบว่ายังมี TextureRect ที่ต้องแสดงหรือไม่
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		# โหลดภาพและแสดงบน TextureRect
		load_texture("res://ร้านผลไม้/พุดซาไม้.png", current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
	else:
		print("All TextureRects have been shown.")

# ฟังก์ชันเพื่อซ่อน TextureRect ทุกตัว
func hide_all_texture_rects():
	for texture_rect in texture_rect_nodes:
		texture_rect.visible = false
