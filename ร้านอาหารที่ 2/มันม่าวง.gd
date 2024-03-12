extends Sprite2D

var speed = 100  # ปรับความเร็วตามต้องการ
var moving = true
var stopPosition = 250  # ปรับตำแหน่งที่ต้องการให้หยุด
var waitTime = 15.0  # ปรับเวลาที่ต้องการให้ตัวละครหยุด

var elapsedTime = 0.0
var pictureShown = false

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

		# แสดงรูปภาพเมื่อตัวละครหยุดภายในเฟรม
		if !pictureShown:
			$กล่องข้อความ.visible = true
			pictureShown = true

		if elapsedTime >= waitTime:
			queue_free()  # ออกจากเฟรมเมื่อครบระยะเวลาที่กำหนด
			return

	# ซ่อนรูปภาพเมื่อตัวละครเคลื่อนที่ออกจากเฟรม
	if position.x >= get_viewport_rect().size.x:
		if pictureShown:
			$กล่องข้อความ.visible = false
			pictureShown = false
