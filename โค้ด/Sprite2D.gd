extends Sprite2D

var speed = 100  # Adjust the speed as needed
var moving = true
var stopPosition = 300  # Adjust the stopping position as needed (in pixels)
var waitTime = 5.0  # Adjust the waiting time in seconds

var timerStarted = false
var elapsedTime = 0.0
var moveBack = false
var pictureShown = false

func _process(delta):
	if moving and !moveBack:
		# Move the sprite to the left
		var movement = Vector2.LEFT * speed * delta
		position += movement

		# Check if the sprite has reached the stopping position
		if position.x <= stopPosition and !timerStarted:
			moving = false
			timerStarted = true
			elapsedTime = 0.0

	if timerStarted:
		elapsedTime += delta
		if elapsedTime >= waitTime:
			timerStarted = false
			moving = false
			moveBack = true
			elapsedTime = 0.0

	if moveBack:
		# Move the sprite back to the right after the waiting time
		var movementBack = Vector2.RIGHT * speed * delta
		position += movementBack

		# Check if the sprite has reached the original position
		if position.x >= 0:
			moveBack = false
			moving = true
			if !pictureShown:
				# Show the picture when the sprite returns to the original position
				$YourPictureNode.visible = true  # Replace 'YourPictureNode' with the actual node name
				pictureShown = true
