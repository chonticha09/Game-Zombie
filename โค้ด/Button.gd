extends Button

# รับ Node ที่ต้องการควบคุม (TextureRect) ผ่าน path
var texture_rect_node: TextureRect = preload("res://ร้านพิซซ่า/ร้านพิซซ่าใหม่/พซซอส.png")

# เมื่อปุ่มถูกกด
func _on_button_pressed():
	# ตรวจสอบว่า TextureRect ปัจจุบันถูกแสดงหรือไม่
	if texture_rect_node.visible:
		# ถ้าถูกแสดงอยู่ ให้ซ่อน
		texture_rect_node.visible = false
	else:
		# ถ้าถูกซ่อนอยู่ ให้แสดง
		texture_rect_node.visible = true
