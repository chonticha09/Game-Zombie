extends CharacterBody2D

var speed = 180

func _process(_delta):
	# Input handling
	var input_vector = Vector2()
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()

	# Calculate velocity based on input
	velocity = input_vector * speed
