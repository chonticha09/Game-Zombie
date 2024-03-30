extends Control

var sprites = [] # เก็บรูปภาพที่ต้องการสุ่ม

# Called when the node enters the scene tree for the first time.
func _ready():
	# เพิ่มรูปภาพลงในอาร์เรย์
	sprites.append(load("res://ร้านอาหารญี่ปุ่น/สุ่มอาหาร/ซุซิทูน่า.png")) # เปลี่ยน sprite1.png เป็นที่ตั้งของไฟล์รูปภาพที่คุณต้องการใช้
	sprites.append(load("res://ร้านอาหารญี่ปุ่น/สุ่มอาหาร/ซุซิแซลม่อน.png")) # เปลี่ยน sprite2.png เป็นที่ตั้งของไฟล์รูปภาพที่คุณต้องการใช้
	# เพิ่มรูปภาพเพิ่มเติมตามต้องการ

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# สร้างตัวแปรสำหรับเก็บรูปภาพที่สุ่มได้
	var random_sprite = sprites[randi_range(0, sprites.size() - 1)]
