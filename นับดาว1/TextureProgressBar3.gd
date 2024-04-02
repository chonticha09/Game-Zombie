extends TextureProgressBar

func _process(delta):
	# ตัวอย่างโค้ด: เลื่อน TextureProgressBar ไปทางขวาเรื่อยๆ
	value += delta * 30  # ปรับค่า delta และความเร็วตามต้องการ
	if value >= max_value: 
		value = min_value  # เมื่อ TextureProgressBar ขยับไปถึงขอบมากสุด ก็เริ่มต้นใหม่จากขอบน้อยสุด
