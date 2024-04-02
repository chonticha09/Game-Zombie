extends TextureProgressBar

var speed: float = 100  # ความเร็วของการเคลื่อนที่
var firstProgress: bool = true  # ตรวจสอบว่า TextureProgressBar แรกได้ถึงค่าสูงสุดหรือไม่
var secondProgress: bool = false  # ตรวจสอบว่า TextureProgressBar ต่อไปได้ถึงค่าสูงสุดหรือไม่

func _process(delta):
	if firstProgress:
		value += delta * speed  # ปรับความเร็วของการเคลื่อนที่โดยการคูณกับค่า speed
		if value >= max_value:
			value = max_value  # ตั้งค่าให้เป็นค่าสูงสุดเพื่อป้องกันไม่ให้เกินค่าสูงสุด
			firstProgress = false  # เมื่อ TextureProgressBar แรกขยับไปถึงขอบมากสุดแล้ว กำหนด firstProgress เป็น False
			secondProgress = true  # กำหนดให้ TextureProgressBar ต่อไปเริ่มขยับ

	if secondProgress:
		# ในส่วนนี้คุณสามารถเรียกใช้ TextureProgressBar อีกหนึ่งรายการเพื่อขยับไปตามต้องการ
