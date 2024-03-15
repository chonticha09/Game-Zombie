extends Sprite2D

var speed = 100
var moving = true
var stopPosition = 250  # ตำแหน่งที่ซอมบี้จะหยุด
var waitTime = 15.0  # เวลาที่รอหลังจากซอมบี้หยุด (15 วินาที)
var elapsedTime = 0.0
var popupShown = false

var popup = null
var textureRect = null
var pictureTexture = preload("res://กล่องข้อความ.png")

func _ready():
	popup = get_node("กล่องข้อความ")
	textureRect = popup.get_node("TextureRect")
	hide_textureRect()

func _process(delta):
	if moving:
		var movement = Vector2.LEFT * speed * delta
		position += movement

		if position.x <= stopPosition:
			moving = false
			elapsedTime = 0.0

	if !moving:
		elapsedTime += delta
		if elapsedTime >= waitTime and !popupShown:
			show_textureRect()
			popupShown = true

	if !moving and elapsedTime >= waitTime:
		hide_textureRect()
		moving = true
		elapsedTime = 0.0

		var movement = Vector2.RIGHT * speed * delta
		position += movement

		if position.x >= stopPosition:
			moving = true

func show_textureRect():
	if textureRect != null:
		textureRect.texture = pictureTexture
		textureRect.visible = true

func hide_textureRect():
	if textureRect != null:
		textureRect.visible = false
