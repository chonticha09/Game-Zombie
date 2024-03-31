extends Control

var textures = []  # อาร์เรย์เก็บรูปภาพที่ใช้สำหรับสุ่ม

func _ready():
	# โหลดรูปภาพของ Sprite
	var texture = preload("res://กล่องข้อความ.png")

	# เตรียมรูปภาพที่จะใช้สำหรับสุ่ม
	textures.append(preload("res://ร้านอาหารญี่ปุ่น/สุ่มอาหาร/ซุซิทูน่า.png"))
	textures.append(preload("res://ร้านอาหารญี่ปุ่น/สุ่มอาหาร/ซุซิแซลม่อน.png"))
	textures.append(preload("res://ร้านอาหารญี่ปุ่น/สุ่มอาหาร/ซูซิกุ้ง.png"))
	textures.append(preload("res://ร้านอาหารญี่ปุ่น/สุ่มอาหาร/ซูซิไข่หวาน.png"))

	# เลือกรูปภาพแบบสุ่มเป็นรูปเริ่มต้น
	set_random_texture()

	# กำหนดรูปภาพให้กับ Sprite

func set_random_texture():
	# ตรวจสอบว่าอาร์เรย์ textures มีข้อมูลอยู่หรือไม่
	if textures.size() > 0:
		# เลือกรูปภาพสุ่มจากอาร์เรย์ของรูปภาพ
		var random_index = randi_range(0, textures.size() - 1)
		var selected_texture = textures[random_index]
		# กำหนดรูปภาพให้กับ Sprite

	else:
		print("Error: textures array is empty.")
