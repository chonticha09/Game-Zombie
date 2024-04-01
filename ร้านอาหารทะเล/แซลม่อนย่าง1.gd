extends TextureButton

var texture_rect_node: TextureRect

func _ready():
	texture_rect_node = get_node("แซลม่อน2")

	if texture_rect_node:
		texture_rect_node.visible = false
	else:
		print("TextureRect with the name 'แซลม่อน2' not found in the scene.")

func load_mango_texture(texture_rect: TextureRect) -> void:
	var texture1 = preload("res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/ชิ้นแซลม่อน.png")
	if texture1:
		texture_rect.texture = texture1
		texture_rect.visible = true
		hide() # ซ่อนปุ่มเมื่อแสดงรูปแล้ว
	else:
		print("Failed to load mango texture.")

func _on_pressed():
	if texture_rect_node:
		load_mango_texture(texture_rect_node)
	else:
		print("TextureRect with the name 'แซลม่อน2' not found in the scene.")
