extends Sprite2D

var speed = 100  # ปรับความเร็วตามต้องการ
var moving = true
var stopPosition = 250  # ปรับตำแหน่งที่ต้องการให้หยุด
var waitTime = 15.0  # ปรับเวลารอให้ตัวละครหยุด (15 วินาที)

var elapsedTime = 0.0

func _process(delta):
	if moving:
		# เคลื่อนที่ตัวละครไปทางซ้าย
		var movement = Vector2.LEFT * speed * delta
		position += movement

		# ตรวจสอบว่าตัวละครได้ถึงตำแหน่งหยุดหรือไม่
		if position.x <= stopPosition:
			moving = false
			elapsedTime = 0.0

	if !moving:
		elapsedTime += delta
		if elapsedTime >= waitTime:
			moving = true
			elapsedTime = 0.0

			# เคลื่อนที่ตัวละครไปทางขวา
			var movement = Vector2.RIGHT * speed * delta
			position += movement

			# เช็คเงื่อนไขว่าตัวละครได้ถึงตำแหน่งหยุดต่อไปหรือไม่
			if position.x >= stopPosition:
				moving = true
