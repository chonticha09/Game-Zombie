extends Control

var texture_rect_nodes: Array
var current_texture_index: int = 0

func _ready():
	# หา TextureRect ในฉากและเก็บไว้ใน Array
	texture_rect_nodes = [
		get_node("แป้งพิซซ่า1"),
		get_node("แป้งพิซซ่า2"),
		get_node("แป้งพิซซ่า3"),
		get_node("แป้งพิซซ่า4")
	]
	
	# ทำให้ TextureRect ทุกตัวไม่แสดง
	hide_all_texture_rects()

func load_texture(path: String, texture_rect: TextureRect) -> void:
	# โหลดรูปภาพจาก path และกำหนดให้ TextureRect
	var texture = preload("res://ร้านพิซซ่า/ร้านพิซซ่าใหม่/พซซอส.png")
	texture_rect.texture = texture

# เมื่อปุ่มถูกกด
func _on_button_pressed():
	# ตรวจสอบว่ายังมี TextureRect ที่ต้องแสดงอยู่หรือไม่
	if current_texture_index < texture_rect_nodes.size():
		# ดึง TextureRect ตามลำดับและทำให้แสดง
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_texture("res://ร้านพิซซ่า/ร้านพิซซ่าใหม่/พซซอส.png", current_texture_rect)
		current_texture_rect.visible = true
		
		# เพิ่มลำดับ TextureRect ที่ให้แสดงถัดไป
		current_texture_index += 1
	else:
		print("All TextureRects have been shown.")

func hide_all_texture_rects():
	# ทำให้ทุก TextureRect ไม่แสดง
	for texture_rect in texture_rect_nodes:
		texture_rect.visible = false




