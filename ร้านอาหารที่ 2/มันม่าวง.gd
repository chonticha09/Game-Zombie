extends Sprite2D

var speed = 100
var moving = true
var stopPosition = 250
var waitTime = 15.0
var elapsedTime = 0.0
var popupShown = false

var popup = null
var pictureTexture = preload("res://กล่องข้อความ.png")

func _ready():
	popup = get_node("Popup")

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
			show_popup()
			popupShown = true

	if !moving and elapsedTime >= waitTime:
		moving = true
		elapsedTime = 0.0

		var movement = Vector2.RIGHT * speed * delta
		position += movement

		if position.x >= stopPosition:
			moving = true

func show_popup():
	popup.visible = true
	var texture_rect = popup.get_node("TextureRect")
	texture_rect.texture = pictureTexture

func hide_popup():
	popup.visible = false
