extends Sprite2D

var speed = 25  # ความเร็วในการเคลื่อนที่
var moving = true  # สถานะการเคลื่อนที่ของ Sprite
var textures = []  # อาร์เรย์เก็บรูปภาพที่ใช้สำหรับสุ่ม

func _process(delta):
	if moving:
		# คำนวณการเคลื่อนที่ของ Sprite ไปทางขวา
		var movement = Vector2.LEFT * speed * delta
		position += movement

		# ตรวจสอบว่า Sprite ได้เคลื่อนที่ออกนอกหน้าจอหรือไม่
		if position.x > get_viewport_rect().size.x:
			# ถ้าออกนอกหน้าจอให้สร้าง Sprite ใหม่ที่ตำแหน่งเริ่มต้น
			position.x = 0

func _ready():
	# โหลดรูปภาพของ Sprite
	var texture = preload("res://กล่องข้อความ.png")

	# เตรียมรูปภาพที่จะใช้สำหรับสุ่ม
	textures.append(preload("res://ร้านอาหารญี่ปุ่น/สุ่มอาหาร/ซุซิแซลม่อน.png"))
	textures.append(preload("res://ร้านอาหารญี่ปุ่น/สุ่มอาหาร/ซูซิกุ้ง.png"))
	textures.append(preload("res://ร้านอาหารญี่ปุ่น/สุ่มอาหาร/ซูซิไข่หวาน.png"))

	# เลือกรูปภาพแบบสุ่มเป็นรูปเริ่มต้น
	set_random_texture()

	# กำหนดรูปภาพให้กับ Sprite
	texture = preload("res://ร้านพิซซ่า/มันม่าวง.png")
	set_texture(texture)

func set_random_texture():
	# ตรวจสอบว่าอาร์เรย์ textures มีข้อมูลอยู่หรือไม่
	if textures.size() > 0:
		# เลือกรูปภาพสุ่มจากอาร์เรย์ของรูปภาพ
		var random_index = randi_range(0, textures.size() - 1)
		var selected_texture = textures[random_index]
		# กำหนดรูปภาพให้กับ Sprite
		texture = selected_texture
		set_texture(texture)
	else:
		print("Error: textures array is empty.")
