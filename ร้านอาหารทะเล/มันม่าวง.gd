extends Sprite2D

var speed = 100
var moving = true
var stopPosition = 900
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

		if position.x >= stopPosition:  
			show_textureRect()
			moving = false
			elapsedTime = 0.0
			# Move the character to the right immediately
			var movement = Vector2.RIGHT * speed * delta
			position += movement

	if !moving:
		if position.x < initialPosition.x:  # Check if character goes out of frame
			position = initialPosition  

func show_textureRect():
	if textureRect != null:
		pictureTexture = preload("res://กล่องข้อความ.png")
		textureRect.texture = pictureTexture
		textureRect.visible = true

func hide_textureRect():
	if textureRect != null:
		textureRect.visible = false
