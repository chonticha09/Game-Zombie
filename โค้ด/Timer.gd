extends Timer

func _ready():
	# ตั้งค่าเวลาที่ต้องรอ (เวลาถอยหลัง) เป็น 5 วินาที
	wait_time = 0.60
	self.wait_time = wait_time
	# ตั้งค่าให้ Timer เริ่มต้นทันทีเมื่อ Scene เริ่ม
	self.start()

# ฟังก์ชันที่เรียกเมื่อ Timer ถึงเวลาที่กำหนด
func _on_Timer_timeout():
	print("Time's up!")
	# ทำอย่างไรก็ตามที่คุณต้องการทำเมื่อเวลาถึง
