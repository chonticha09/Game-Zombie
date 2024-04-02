extends Sprite2D

func _process(delta):
	# คำนวณตำแหน่งของ Sprite 2D โดยใช้ค่าของ ProgressBar
	var target_x = $ProgressBar.get_value() * $ProgressBar.get_rect().size.x
	# ตั้งค่าตำแหน่งของ Sprite 2D
	set_position(Vector2(target_x, position.y))
