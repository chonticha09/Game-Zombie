extends ProgressBar

var speed = 1  # ความเร็วของ Progress bar ในหน่วย pixel ต่อวินาที

func _process(delta):
	# เลื่อน Progress bar ไปทางขวาด้วยความเร็วที่กำหนด
	if value < 100:
		value += speed * delta
	else:
		value = 0  # เมื่อ Progress bar เต็ม ให้เริ่มต้นใหม่



