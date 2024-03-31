extends TextureRect


var textures = []  # อาร์เรย์เก็บรูปภาพที่ใช้สำหรับสุ่ม

func _ready():
	# เตรียมรูปภาพที่จะใช้สำหรับสุ่ม
	textures.append(load("res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/เมนูอาหารทะเล/จานผักซอสปลา.png"))
	textures.append(load("res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/เมนูอาหารทะเล/จานผักมะนาวซอสปลา.png"))
	textures.append(load("res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/เมนูอาหารทะเล/จานเนื้อผักมะเขือ.png"))
	textures.append(load("res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/เมนูอาหารทะเล/จานเนื้อมะเขื่อเทศซอส.png"))
	textures.append(load("res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/เมนูอาหารทะเล/เฟรนฟรายง.png"))
	textures.append(load("res://ร้านอาหารทะเล/ร้านอาหารทะเลใหม่/เมนูอาหารทะเล/ไอติมเขียว.png"))

	# กำหนดรูปภาพเริ่มต้นให้กับ Sprite
	set_random_texture()

func set_random_texture():
	# ตรวจสอบว่าอาร์เรย์ textures มีข้อมูลอยู่หรือไม่
	if textures.size() > 0:
		# เลือกรูปภาพสุ่มจากอาร์เรย์ของรูปภาพ
		var random_index = randi_range(0, textures.size() - 1)
		var selected_texture = textures[random_index]
		
		# กำหนดรูปภาพให้กับ Sprite
		texture = selected_texture
		
		# กำหนดขนาดของรูปภาพให้เล็กลง (เช่น ครึ่งขนาด)
		set_scale(Vector2(0.3, 0.3))
	else:
		print("Error: textures array is empty.")
