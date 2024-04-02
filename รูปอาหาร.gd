extends TextureRect


var textures = []  # อาร์เรย์เก็บรูปภาพที่ใช้สำหรับสุ่ม

func _ready():
	# เตรียมรูปภาพที่จะใช้สำหรับสุ่ม
	textures.append(load("res://ร้านผลไม้/สตอช๊อก.png"))
	textures.append(load("res://ร้านผลไม้/สตอเคลือบ.png"))
	textures.append(load("res://ร้านผลไม้/ส้มช๊อก.png"))
	textures.append(load("res://ร้านผลไม้/ส้มเคลือบ.png"))
	textures.append(load("res://ร้านผลไม้/องุ่นช๊อก.png"))
	textures.append(load("res://ร้านผลไม้/องุ่นเขียวเคลือบ.png"))
	textures.append(load("res://ร้านผลไม้/พุดซาเคลื่อบ.png"))
	textures.append(load("res://ร้านผลไม้/พุดช๊อก.png"))
	textures.append(load("res://ร้านผลไม้/กี่วี่เคลือบ.png"))
	textures.append(load("res://ร้านผลไม้/กี่วี่ช๊อก.png"))
	
	textures.append(load("res://ร้านผลไม้/คัพเค้กบลูเบอร์รี่.png"))
	textures.append(load("res://ร้านผลไม้/คัพเค้กเชอร์.png"))
	textures.append(load("res://ร้านผลไม้/คัพเค้กสตอ.png"))


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
