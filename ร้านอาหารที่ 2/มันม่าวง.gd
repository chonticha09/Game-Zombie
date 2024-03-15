extends Sprite2D

var speed = 100
var moving = true
var stopPosition = 250
var waitTime = 15.0
var elapsedTime = 0.0

onready var popup = $Popup  # การอ้างอิงไปยังโหนด Popup ของคุณ ปรับเส้นทางตามที่ต้องการ
onready var pictureTexture = preload("res://กล่องข้อความ.png") # ปรับเส้นทางไปยังรูปของคุณ

func _process(delta):
	if moving:
		var movement = Vector2.LEFT * speed * delta
		position += movement

		if position.x <= stopPosition:
			moving = false
			elapsedTime = 0.0
			show_popup()  # เรียกใช้ฟังก์ชันเพื่อแสดง Popup เมื่อซอมบี้หยุด

	if !moving:
		elapsedTime += delta
		if elapsedTime >= waitTime:
			moving = true
			elapsedTime = 0.0

			var movement = Vector2.RIGHT * speed * delta
			position += movement

			if position.x >= stopPosition:
				moving = true

func show_popup():
	popup.visible = true  # แสดง Popup เมื่อซอมบี้หยุดเคลื่อนที่
	var texturereact = popup.get_node("กล่องข้อความ")
	texturereact.texture = pictureTexture

# แบบเพิ่มเติม: เพิ่มฟังก์ชันเพื่อซ่อน Popup
func hide_popup():
	popup.visible = false
