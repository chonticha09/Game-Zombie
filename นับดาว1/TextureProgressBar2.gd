extends TextureProgressBar

func _process(delta):
	# เลื่อน TextureProgressBar ไปทางขวาเรื่อยๆ
	value += delta * 50  # ปรับค่า delta และความเร็วตามต้องการ
	if value >= max_value:
		value = max_value  # ตั้งค่าให้เป็นค่าสูงสุดเพื่อให้หยุดที่ขอบ
		print("TextureProgressBar ได้ขยับไปยังขอบสูงสุดแล้ว")
