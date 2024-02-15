extends Sprite2D

var speed = 100  # ปรับความเร็วตามต้องการ
var moving = true
var stopPosition = 250  # ปรับตำแหน่งที่ต้องการให้หยุด
var waitTime = 10.0  # ปรับเวลารอให้ตัวละครหยุด

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
		if elapsedTime >= waitTime:
			moving = true
			elapsedTime = 0.0

	# แสดงรูปภาพเมื่อตัวละครเดินกลับมาที่ตำแหน่งเริ่มต้น
	if moving and pictureShown:
		$YourPictureNode.visible = false  # ซ่อนรูปภาพเมื่อเริ่มเดิน
		pictureShown = false
