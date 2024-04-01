extends Control

var image_visible = false

func _ready():
	# ซ่อนรูปภาพแซลม่อน4 เมื่อเริ่มต้น
	$"เนื้อย่าง1".visible = true
	# เรียกใช้ฟังก์ชันเพื่อซ่อนปุ่มและแสดงรูปภาพแซลม่อน3 ทันทีที่แอพพลิเคชั่นเริ่มต้น
	_on_button_pressed()

func _on_button_pressed():
	# เปลี่ยนสถานะการแสดงรูปภาพเมื่อปุ่มแซลม่อนย่าง4 ถูกกด
	image_visible = not image_visible
	$"เนื้อย่าง1".visible =  image_visible
	$"เนื้อย่างเสร็จ1".visible = not image_visible


