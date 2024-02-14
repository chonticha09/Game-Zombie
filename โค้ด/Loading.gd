extends Control

# เมื่อโหนดเข้าสู่ต้นไม้ของฉากครั้งแรก
func _ready():
	pass # แทนที่ด้วยร่างของฟังก์ชัน

# เรียกใช้ทุกเฟรม โดย 'delta' คือ เวลาผ่านไปตั้งแต่เฟรมก่อนหน้า


func _on_timer_timeout():
	$ProgressBar.value += 1

	# ตรวจสอบว่า progress bar เต็มหรือไม่ (สมมติว่าค่าสูงสุดคือ 100)
	if $ProgressBar.value >= $ProgressBar.max_value:
		# เปลี่ยนฉากที่นี่
		change_scene()

# ฟังก์ชั่นเพื่อเปลี่ยนฉาก
func change_scene():
	# แทนที่ 'NextScene.tscn' ด้วยที่อยู่ของฉากถัดไป
	var next_scene = preload("res://ซีนต่างๆ/screen_2.tscn")
	get_tree().change_scene_to_file("res://ซีนต่างๆ/screen_2.tscn")
