extends Control

var texture_button_nodes: Array
var current_texture_index: int = 0

func _ready():
	# หา TextureButton ในฉากและเก็บไว้ใน Array
	texture_button_nodes = [
		get_node("เนื้อย่าง1"),
		get_node("เนื้อย่าง2")
	]
		
	# ทำให้ TextureButton ทุกตัวไม่แสดง
	hide_all_texture_buttons()

func load_texture(path: String, texture_button: TextureButton) -> void:
	# โหลดรูปภาพจาก path และกำหนดให้ TextureButton
	var texture = preload("res://ร้านอาหารที่ 2/ร้านอาหารทะเลใหม่/เนิ้อสุก.png")
	if texture:
		texture_button.texture_normal = texture
	else:
		print("Failed to load texture from path:", path)

# เมื่อปุ่มถูกกด
func _on_เนื้อก่อนย่าง_pressed():
	if current_texture_index < texture_button_nodes.size():
		var current_texture_button = texture_button_nodes[current_texture_index]
		load_texture("res://ร้านอาหารที่ 2/ร้านอาหารทะเลใหม่/เนิ้อสุก.png", current_texture_button)
		current_texture_button.visible = true
		current_texture_index += 1
	else:
		print("All TextureButtons have been shown.")

func hide_all_texture_buttons():
	# ทำให้ทุก TextureButton ไม่แสดง
	for texture_button in texture_button_nodes:
		texture_button.visible = false



func _on_เนื้อย่าง1_pressed():
	pass # Replace with function body.


func _on_เนื้อย่าง2_pressed():
	pass # Replace with function body.
