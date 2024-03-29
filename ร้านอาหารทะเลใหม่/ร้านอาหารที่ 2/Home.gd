extends TextureButton


var texture_rect_node: TextureRect
var current_texture_index: int = 0

func _ready():
	# หา TextureRect ในฉากและเก็บไว้
	texture_rect_node = get_node("หน้าตั้งค่า2")
	
	# ทำให้ TextureRect ไม่แสดง
	hide_texture_rect()

func load_texture(path: String, texture_rect: TextureRect) -> void:
	# โหลดรูปภาพจาก path และกำหนดให้ TextureRect
	var texture = preload("res://เพิ่มเติม/หน้าตั้งค่า.png")
	texture_rect.texture = texture

# เมื่อปุ่มถูกกด
func _on_pressed():
	# ถ้า TextureRect กำลังแสดง
	if texture_rect_node.visible:
		# ทำให้ TextureRect ไม่แสดง
		hide_texture_rect()
	else:
		# โหลดและแสดงรูปภาพ
		load_texture("res://เพิ่มเติม/หน้าตั้งค่า.png", texture_rect_node)
		texture_rect_node.visible = true
		current_texture_index += 1
		
	
func hide_texture_rect():
	# ทำให้ TextureRect ไม่แสดง
	texture_rect_node.visible = false


