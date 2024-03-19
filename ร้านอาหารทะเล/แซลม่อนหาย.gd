extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_เนื้อย่าง1_pressed():
	$แซลม่อนย่าง1.queue_free()

func _on_เนื้อย่าง2_pressed():
	$แซลม่อนย่าง2.queue_free()
