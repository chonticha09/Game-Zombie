extends Sprite2D

# กำหนดตัวแปร
var texture_rect_nodes: Array
var current_texture_index: int = 0

func _ready():
	# ค้นหา TextureRects ในฉากและเก็บไว้ในอาร์เรย์
	texture_rect_nodes = [
		get_node("แซลม่อนย่าง3"),
		get_node("แซลม่อนย่าง4")
		# เพิ่มโหนดเพิ่มเติมตามต้องการ
	]
	
	# ซ่อน TextureRects ทั้งหมด
	hide_all_texture_rects()

	# เชื่อมต่อสัญญาณสำหรับการคลิกลงบนจาน
	connect("pressed", self, "_on_plate_pressed")

# ฟังก์ชันในการโหลดเนื้อแซลมอน
func load_salmon_texture(texture_rect: TextureRect) -> void:
	var texture1 = preload("res://ร้านอาหารที่ 2/ร้านอาหารทะเลใหม่/ชิ้นแซลม่อน.png")
	texture_rect.texture = texture1

# ฟังก์ชันในการรวมไอเท็มทั้งหมดลงบนจาน
func merge_items_onto_plate() -> void:
	for texture_rect in texture_rect_nodes:
		texture_rect.visible = true
		# คุณสามารถเพิ่มตรรกะที่นี่เพื่อจัดตำแหน่งแต่ละไอเท็มบนจานตามต้องการ

# ฟังก์ชันในการจัดการคลิกลงบนจาน
func _on_plate_pressed():
	# รวมไอเท็มทั้งหมดลงบนจาน
	merge_items_onto_plate()
	
	# ส่งไอเท็มที่รวมแล้วไปตรวจสอบตามคำขอของลูกค้า
	send_to_check()

# ฟังก์ชันในการส่งไอเท็มที่รวมแล้วไปตรวจสอบตามคำขอของลูกค้า
func send_to_check() -> void:
	# เพิ่มตรรกะของคุณที่นี่เพื่อจัดการการส่งไอเท็มที่รวมแล้วไปตรวจสอบตามคำขอของลูกค้า
	print("ส่งไอเท็มไปตรวจสอบตามคำขอของลูกค้าแล้ว")

# ฟังก์ชันในการซ่อน TextureRects ทั้งหมด
func hide_all_texture_rects():
	for texture_rect in texture_rect_nodes:
		texture_rect.visible = false
