extends TextureProgressBar

var progress_textures: Array = [] # ลิสต์ของ texture สำหรับ progress
var current_progress_texture_index: int = 0

func _ready():
	set_process(true)

func _process(delta: float) -> void:
	# ตรวจสอบว่า progress มีการเปลี่ยนแปลงหรือไม่
	if is_texture_change_needed():
		change_progress_texture()

func is_texture_change_needed() -> bool:
	# ตรวจสอบว่ามี texture สำหรับ progress ที่ต้องการเปลี่ยนหรือไม่
	return current_progress_texture_index < progress_textures.size() - 1

func change_progress_texture() -> void:
	# เปลี่ยน texture ของ progress โดยเลื่อน index ไปยัง texture ถัดไปในลิสต์
	current_progress_texture_index += 1
	$TextureProgress.texture_progress = progress_textures[current_progress_texture_index]



