extends TextureButton

var texture_rect_node: TextureRect

func _ready():
	# หา TextureRect ในฉากและเก็บไว้
	texture_rect_node = get_node("หน้าตั้งค่า")
	
	# ทำให้ TextureRect ไม่แสดง
	hide_texture_rect()

func load_texture(path: String):
	# โหลดรูปภาพจาก path และกำหนดให้ TextureRect
	var texture = preload("res://หน้าตั้งค่าใหม่/กรอบสีเขียว.png")
	texture_rect_node.texture = texture

# เมื่อปุ่มถูกกด

func _on_pressed():
	# ถ้า TextureRect กำลังแสดง
	if texture_rect_node.visible:
		# ทำให้ TextureRect ไม่แสดง
		hide_texture_rect()
	else:
		# โหลดและแสดงรูปภาพ
		load_texture("res://หน้าตั้งค่าใหม่/กรอบสีเขียว.png")
		texture_rect_node.visible = true
		

func hide_texture_rect():
	# ทำให้ TextureRect ไม่แสดง
	texture_rect_node.visible = false


