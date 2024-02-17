extends Control

var texture_rect_nodes: Array
var current_texture_index: int = 0

func _ready():
	# หา TextureRect ในฉากและเก็บไว้ใน Array
	texture_rect_nodes = [
		get_node("ถาดพิซซ่า/ชั้นแป้ง1"),
		get_node("ถาดพิซซ่า2/ชั้นแป้ง2"),
		get_node("ถาดพิซซ่า3/ชั้นแป้ง3"),
		get_node("ถาดพิซซ่า4/ชั้นแป้ง4"),
		get_node("ถาดพิซซ่า/ชั้นแป้ง1/แป้งพิซซ่า1"),
		get_node("ถาดพิซซ่า2/ชั้นแป้ง2/แป้งพิซซ่า2"),
		get_node("ถาดพิซซ่า3/ชั้นแป้ง3/แป้งพิซซ่า3"),
		get_node("ถาดพิซซ่า4/ชั้นแป้ง4/แป้งพิซซ่า4"),
		get_node("ถาดพิซซ่า/ชั้นแป้ง1/มะเขือเทศ1"),
		get_node("ถาดพิซซ่า2/ชั้นแป้ง2/มะเขือเทศ2"),
		get_node("ถาดพิซซ่า3/ชั้นแป้ง3/มะเขือเทศ3"),
		get_node("ถาดพิซซ่า4/ชั้นแป้ง4/มะเขือเทศ4"),
		get_node("ถาดพิซซ่า/ชั้นแป้ง1/พริกหยวก1"),
		get_node("ถาดพิซซ่า2/ชั้นแป้ง2/พริกหยวก2"),
		get_node("ถาดพิซซ่า3/ชั้นแป้ง3/พริกหยวก3"),
		get_node("ถาดพิซซ่า4/ชั้นแป้ง4/พริกหยวก4"),
		get_node("ถาดพิซซ่า/ชั้นแป้ง1/ลูกตา1"),
		get_node("ถาดพิซซ่า2/ชั้นแป้ง2/ลูกตา2"),
		get_node("ถาดพิซซ่า3/ชั้นแป้ง3/ลูกตา3"),
		get_node("ถาดพิซซ่า4/ชั้นแป้ง4/ลูกตา4"),
		get_node("ถาดพิซซ่า/ชั้นแป้ง1/สมอง1"),
		get_node("ถาดพิซซ่า2/ชั้นแป้ง2/สมอง2"),
		get_node("ถาดพิซซ่า3/ชั้นแป้ง3/สมอง3"),
		get_node("ถาดพิซซ่า4/ชั้นแป้ง4/สมอง4")
	]
	
	# ทำให้ TextureRect ทุกตัวไม่แสดง
	hide_all_texture_rects()

# ฟังก์ชันโหลดรูปภาพเลม่อน
func load_ชั้นแป้งพิซซ่า_texture(texture_rect: TextureRect) -> void:
	var texture1 = preload("res://ร้านพิซซ่า/ร้านพิซซ่าใหม่/แป้งพิซซ่า.png")
	texture_rect.texture = texture1

# ฟังก์ชันโหลดรูปภาพน้ำจิ้มหัวสมอง
func load_ซอส_texture(texture_rect: TextureRect) -> void:
	var texture2 = preload("res://ร้านพิซซ่า/ร้านพิซซ่าใหม่/พซซอส.png")
	texture_rect.texture = texture2

# ฟังก์ชันโหลดรูปภาพมะเขือเทศ
func load_มะเขือเทศ_texture(texture_rect: TextureRect) -> void:
	var texture3 = preload("res://ร้านพิซซ่า/ร้านพิซซ่าใหม่/หน้ามะเขือเทศ.png")
	texture_rect.texture = texture3
	
func load_พริกหยวก_texture(texture_rect: TextureRect) -> void:
	var texture4 = preload("res://ร้านพิซซ่า/ร้านพิซซ่าใหม่/หน้าพริกหยวก.png")
	texture_rect.texture = texture4
	
func load_ตา_texture(texture_rect: TextureRect) -> void:
	var texture5 = preload("res://ร้านพิซซ่า/ร้านพิซซ่าใหม่/หน้าลูกตา.png")
	texture_rect.texture = texture5
	
func load_สมอง_texture(texture_rect: TextureRect) -> void:
	var texture5 = preload("res://ร้านพิซซ่า/ร้านพิซซ่าใหม่/หน้าสมอง.png")
	texture_rect.texture = texture5
	
# เมื่อปุ่มถูกกด (โหลดรูปภาพเลม่อน)
func _on_ชั้นแป้งพิซซ่า_pressed():
	show_next_ชั้นแป้งพิซซ่า_texture()

func _on_ซอส_pressed():
	show_next_ซอส_texture()
	
func _on_มะเขือเทศ_pressed():
	show_next_มะเขือเทศ_texture()
	
func _on_พริกหยวก_pressed():
	show_next_พริกหยวก_texture()
	
func _on_ตา_pressed():
	show_next_ตา_texture()
	
func _on_สมอง_pressed():
	show_next_สมอง_texture()
	

func show_next_ชั้นแป้งพิซซ่า_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_ชั้นแป้งพิซซ่า_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
	else:
		print("All TextureRects have been shown.")
		
func show_next_ซอส_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_ซอส_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
	else:
		print("All TextureRects have been shown.")
		
func show_next_มะเขือเทศ_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_มะเขือเทศ_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
	else:
		print("All TextureRects have been shown.")
		
func show_next_พริกหยวก_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_พริกหยวก_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
	else:
		print("All TextureRects have been shown.")
		
func show_next_ตา_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_ตา_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
	else:
		print("All TextureRects have been shown.")
		
func show_next_สมอง_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_สมอง_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
	else:
		print("All TextureRects have been shown.")

func hide_all_texture_rects():
	for texture_rect in texture_rect_nodes:
		texture_rect.visible = false

func _on_button_pressed():
	pass # Replace with function body.
