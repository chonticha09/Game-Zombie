extends Sprite2D

var speed = 25  # ความเร็วในการเคลื่อนที่
var moving = true  # สถานะการเคลื่อนที่ของ Sprite

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
	# กำหนดรูปภาพให้กับ Sprite
	texture = preload("res://ร้านพิซซ่า/มันม่าวง.png")
	set_texture(texture)
