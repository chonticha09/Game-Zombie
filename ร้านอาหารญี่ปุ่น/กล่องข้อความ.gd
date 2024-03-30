extends TextureRect

# Called when the node enters the scene tree for the first time.
func _ready():
	var random_food_node = Control.new()  # สร้างโหนด Control ใหม่
	random_food_node.name = "สุ่มอาหาร"  # กำหนดชื่อให้กับโหนด Control
	add_child(random_food_node)  # เพิ่มโหนด Control เข้าไปในโหนด TextureRect

	# เรียกใช้งานฟังก์ชันหรือเมทอดของคลาส Control
	random_food_node.some_control_function()  
