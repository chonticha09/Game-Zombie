extends TextureButton

var texture_rect_nodes: Array
var current_texture_index: int = 0

func _ready():
	# หา TextureRect ในฉากและเก็บไว้ใน Array
	texture_rect_nodes = [
		get_node("กุ้งทอด1"),
		get_node("กุ้งทอด2"),
	]
	
	# ทำให้ TextureRect ทุกตัวไม่แสดง
	hide_all_texture_rects()

func load_texture(path: String, texture_rect: TextureRect) -> void:
	# โหลดรูปภาพจาก path และกำหนดให้ TextureRect
	var texture = preload("res://ร้านอาหารญี่ปุ่น/กุ้งทอด.png")  # แก้ตรงนี้ให้ใช้ตัวแปร path ที่ส่งเข้ามา
	texture_rect.texture = texture

func _on_pressed():
	# ตรวจสอบว่ายังมี TextureRect ที่ต้องแสดงอยู่หรือไม่
	if current_texture_index < texture_rect_nodes.size():
		# ดึง TextureRect ตามลำดับและทำให้แสดง
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_texture("res://ร้านอาหารญี่ปุ่น/กุ้งทอด.png", current_texture_rect)  # แก้ตรงนี้ให้ใช้ path ของร้านอาหารญี่ปุ่น
		current_texture_rect.visible = true
		
		# เพิ่มลำดับ TextureRect ที่ให้แสดงถัดไป
		current_texture_index += 1
	else:
		print("All TextureRects have been shown.")

func hide_all_texture_rects():
	# ทำให้ทุก TextureRect ไม่แสดง
	for texture_rect in texture_rect_nodes:
		texture_rect.visible = false
