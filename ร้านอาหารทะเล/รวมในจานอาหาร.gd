extends Control

var texture_rect_nodes: Array
var current_texture_index: int = 0

func _ready():
	# หา TextureRect ในฉากและเก็บไว้ใน Array
	texture_rect_nodes = [
		get_node("จานเปล่า1/จาน1/เลม่อน1"),
		get_node("จานเปล่า1/จาน1/เลม่อน2"),
		get_node("จานเปล่า3/จาน3/เลม่อน3"),
		get_node("จานเปล่า3/จาน3/เลม่อน4"),
		get_node("จานเปล่า4/จาน4/มะเขือเทศ1"),
		get_node("จานเปล่า4/จาน4/มะเขือเทศ2"),
		get_node("จานเปล่า2/จาน2/ผัก1"),
		get_node("จานเปล่า3/จาน3/ผัก2"),
		get_node("จานเปล่า1/จาน1/ซอส1"),
		get_node("จานเปล่า2/จาน2/ซอส2")
	]
	
	# ทำให้ TextureRect ทุกตัวไม่แสดง
	hide_all_texture_rects()

# ฟังก์ชันโหลดรูปภาพเลม่อน
func load_mango_texture(texture_rect: TextureRect) -> void:
	var texture1 = preload("res://ร้านอาหารที่ 2/ร้านอาหารทะเลใหม่/เลม่อนซีก.png")
	texture_rect.texture = texture1

# ฟังก์ชันโหลดรูปภาพน้ำจิ้มหัวสมอง
func load_brain_sauce_texture(texture_rect: TextureRect) -> void:
	var texture2 = preload("res://ร้านอาหารที่ 2/ร้านอาหารทะเลใหม่/น้ำจิ้มหัวสมอง.png")
	texture_rect.texture = texture2

# ฟังก์ชันโหลดรูปภาพมะเขือเทศ
func load_มะเขือเทศ_texture(texture_rect: TextureRect) -> void:
	var texture3 = preload("res://ร้านอาหารที่ 2/ร้านอาหารทะเลใหม่/มะเขื่อเทศ.png")
	texture_rect.texture = texture3
	
func load_ผัก_texture(texture_rect: TextureRect) -> void:
	var texture4 = preload("res://ร้านอาหารที่ 2/ร้านอาหารทะเลใหม่/ผัก.png")
	texture_rect.texture = texture4

# เมื่อปุ่มถูกกด (โหลดรูปภาพเลม่อน)
func _on_ถาดมะนาว_pressed():
	show_next_mango_texture()
	
# เมื่อปุ่มถูกกด (โหลดรูปภาพมะเขือเทศ)
func _on_ถาดมะเขือเทศ_pressed():
	show_next_มะเขือเทศ_texture()
	
func _on_ถาดผักกาด_pressed():
	show_next_ผัก_texture()
	
func _on_ถาดซอส_pressed():
	show_next_brain_sauce_texture()

func show_next_mango_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_mango_texture(current_texture_rect)
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
		
func show_next_ผัก_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_ผัก_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
	else:
		print("All TextureRects have been shown.")
		
func show_next_brain_sauce_texture() -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		load_brain_sauce_texture(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
	else:
		print("All TextureRects have been shown.")

func hide_all_texture_rects():
	for texture_rect in texture_rect_nodes:
		texture_rect.visible = false
