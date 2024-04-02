extends Control

# ตรวจสอบหากว่าวิดีโอเคยเล่นเสร็จหรือยัง
var video_finished: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	# Replace with function body.
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Replace with function body.
	pass

# ถูกเรียกทุกครั้งเมื่อวิดีโอเล่นเสร็จ
func _on_video_stream_player_finished():
	# ตั้งค่าให้วิดีโอเล่นเสร็จ
	video_finished = true
	
	# เรียกฟังก์ชันเพื่อเปลี่ยนฉากหรือ Screen
	change_scene_to_next()

# ฟังก์ชันที่ใช้เปลี่ยนฉากหรือ Screen
func change_scene_to_next():
	# ตรวจสอบว่าวิดีโอเล่นเสร็จแล้วหรือไม่
	if video_finished:
		# โหลดหน้าจอหรือฉากต่อไป
		get_tree().change_scene_to_file("res://หน้าเลือกด่านแก้.tscn")
