extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	passextends Control

var texture_progress_bar : TextureProgressBar
var auto_increment_enabled : bool = false
var auto_increment_interval : float = 0.020
var elapsed_time : float = 0.0
var reset_requested : bool = false  # เพิ่มตัวแปรนี้

# Called when the node enters the scene tree for the first time.
func _ready():
	texture_progress_bar = $TextureProgressBar

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# ถ้า Auto Increment ถูกเปิด
	if auto_increment_enabled:
		elapsed_time += delta

		# ถ้าเวลาที่ผ่านไปเกินระยะเวลาที่กำหนด
		if elapsed_time >= auto_increment_interval:
			# เพิ่มค่า progress ทีละ 1
			texture_progress_bar.value += 1

			# รับรองว่าค่าความคืบหน้าไม่เกิน 100%
			if texture_progress_bar.value > 100:
				texture_progress_bar.value = 0  # รีเซ็ต progress bar เมื่อค่าถึง 100
				reset_requested = true  # ตั้งค่าให้ reset_requested เป็น true

			# รีเซ็ตเวลาที่ผ่านไป
			elapsed_time = 0.0

		# ตรวจสอบว่ามีการรีเซ็ตที่ถูกเรียกหรือไม่
		if reset_requested:
			# รีเซ็ต progress bar
			texture_progress_bar.value = 0
			reset_requested = false  # ตั้งค่าให้ reset_requested เป็น false

# เมื่อคลิกที่ปุ่ม

func _on_button_1_pressed():
		# รีเซ็ต progress bar และ reset_requested
	texture_progress_bar.value = 0
	reset_requested = false
	auto_increment_enabled = true  # เปิด Auto Increment เพื่อเริ่มต้นการเพิ่มค่าโดยอัตโนมัติ


