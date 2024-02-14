extends Label

var countdown_time : float = 60.0  # Change the type to float for more precise timing
var countdown_speed : float = 1.0  # Adjust this value to control the countdown speed

# Called when the node enters the scene tree for the first time.
func _ready():
	pass  # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	countdown_time -= delta * countdown_speed  # Multiply delta by countdown_speed

	if countdown_time <= 0:
		countdown_time = 0
		# ทำสิ่งที่คุณต้องการเมื่อนับถอยหลังเสร็จสิ้น
		print("Countdown finished!")
	
	# แสดงเวลาที่เหลือใน Label
	text = str(round(countdown_time))  # Round to the nearest integer for display


func _on_button_pressed():
	pass # Replace with function body.
