extends Sprite2D

var speed = 80
var moving = true
var stopPosition = 950
var waitTime = 5.0
var elapsedTime = 0.0

var textureRect = null
var pictureTexture = null

# Initial position of the character
var initialPosition = Vector2(0, 0)

func _ready():
	textureRect = get_node("กล่องข้อความ")
	hide_textureRect()
	initialPosition = position  # Store the initial position

func _process(delta):
	if moving:
		var movement = Vector2.LEFT * speed * delta
		position += movement

		if position.x <= stopPosition:
			show_textureRect()
			moving = false
			elapsedTime = 0.0

	if !moving:
		elapsedTime += delta

		if elapsedTime >= waitTime:
			hide_textureRect()
			moving = true
			elapsedTime = 0.0
			
	if position.x < -100:  # Check if character goes out of frame
		position = initialPosition  # Reset position to initial position

func show_textureRect():
	if textureRect != null:
		pictureTexture = preload("res://กล่องข้อความ.png")
		textureRect.texture = pictureTexture
		textureRect.visible = true

func hide_textureRect():
	if textureRect != null:
		textureRect.visible = false
