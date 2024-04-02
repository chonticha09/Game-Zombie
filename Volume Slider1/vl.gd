extends Control

var master_bus = AudioServer.get_bus_index("Master")

func _on_h_slider_value_changed(value):
	# ปรับระดับเสียงตามค่าที่เลื่อน
	# ทำให้เสียงลดหรือเพิ่มตามค่าที่เลือก
	AudioServer.set_bus_volume_db(master_bus, value)

	# เมื่อเสียงอยู่ที่ -30 dB ให้ปิดเสียง
	if value == -30:
		AudioServer.set_bus_mute(master_bus, true)
	else:
		AudioServer.set_bus_mute(master_bus, false)
