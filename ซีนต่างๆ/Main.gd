extends AudioStreamPlayer

func _ready():
	# Set up looping
	stream.loop = true
	# Start playing the audio
	play()
