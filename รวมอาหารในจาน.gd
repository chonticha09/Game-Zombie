extends Control

var texture_rect_nodes: Array
var current_texture_index: int = 0

func _ready():
	# Find TextureRect in the scene and store them in an Array
	texture_rect_nodes = [
		get_node("ซูชิไข่หวาน/ข้าว1"),
		get_node("ซูชิทูน่า/ข้าว2"),
		get_node("ซูชิกุ้ง/ข้าว3"),
		get_node("ซูชิแซลม่อน/ข้าว4"),
		get_node("ซูชิไข่หวาน/ข้าว1/ไข่หวาน"),
		get_node("ซูชิทูน่า/ข้าว2/ทูน่า"),
		get_node("ซูชิกุ้ง/ข้าว3/กุ้ง"),
		get_node("ซูชิแซลม่อน/ข้าว4/แซลม่อน")
	]
	
	# Make all TextureRects not visible
	hide_all_texture_rects()

func hide_all_texture_rects():
	for texture_rect in texture_rect_nodes:
		texture_rect.visible = false

# Load sweet egg image
func load_sweet_egg_texture(texture_rect: TextureRect) -> void:
	var texture = preload("res://ร้านอาหารญี่ปุ่น/ซูซิไข่หวาน.png")
	texture_rect.texture = texture

# Load tuna image
func load_tuna_texture(texture_rect: TextureRect) -> void:
	var texture = preload("res://ร้านอาหารญี่ปุ่น/ซุซิทูน่า.png")
	texture_rect.texture = texture

# Load shrimp image
func load_shrimp_texture(texture_rect: TextureRect) -> void:
	var texture = preload("res://ร้านอาหารญี่ปุ่น/ซูซิกุ้ง.png")
	texture_rect.texture = texture
	
# Load salmon image
func load_salmon_texture(texture_rect: TextureRect) -> void:
	var texture = preload("res://ร้านอาหารญี่ปุ่น/ซุซิแซลม่อน.png")
	texture_rect.texture = texture

# Load rice image
func load_rice_texture(texture_rect: TextureRect) -> void:
	var texture = preload("res://ร้านอาหารญี่ปุ่น/ข้าว.png")
	texture_rect.texture = texture
	
	
# When sweet egg button is pressed
func _on_ไข่หวาน_pressed():
	show_next_texture(load_sweet_egg_texture)

# When tuna button is pressed
func _on_ทูน่า_pressed():
	show_next_texture(load_tuna_texture)

# When shrimp button is pressed
func _on_กุ้ง_pressed():
	show_next_texture(load_shrimp_texture)

# When salmon button is pressed
func _on_แซลม่อน_pressed():
	show_next_texture(load_salmon_texture)
	
# When rice button is pressed
func _on_ข้าว_pressed():
	show_next_texture(load_rice_texture)

func show_next_texture(texture_loader_func: Callable) -> void:
	if current_texture_index < texture_rect_nodes.size():
		var current_texture_rect = texture_rect_nodes[current_texture_index]
		texture_loader_func(current_texture_rect)
		current_texture_rect.visible = true
		current_texture_index += 1
	else:
		print("All TextureRects have been shown.")
