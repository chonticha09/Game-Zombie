extends Control
 
func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		toggle()
 
func toggle():
	visible = !visible
	get_tree().paused = visible
 
 
func _on_Start_pressed():
	toggle()
	get_tree().change_scene("yourgame.tscn")
 
 
func _on_Options_pressed():
	show_and_hide(options, menu)
 
 
func _on_Exit_pressed():
	get_tree().quit()
 
 
func _on_Back_pressed():
	show_and_hide(menu, options)
 
func show_and_hide(a,b):
	a.show()
	b.hide()
 
 
func _on_Video_pressed():
	show_and_hide(videos, options)
 
 
func _on_Audio_pressed():
	show_and_hide(audio, options)
 
 
func _on_BackFromVideo_pressed():
	show_and_hide(options, videos)
 
 
func _on_BackFromAudio_pressed():
	show_and_hide(options, audio)
 
 
func _on_FullScreen_toggled(button_pressed):
	OS.window_fullscreen = button_pressed
	SaveData.fullscreen = button_pressed
 
 
func _on_Borderless_toggled(button_pressed):
	OS.window_borderless = button_pressed
	SaveData.borderless = button_pressed
 
 
func _on_VSync_toggled(button_pressed):
	OS.vsync_enabled = button_pressed
	SaveData.vsync = button_pressed
 
 
func _on_Master_value_changed(value):
	volume(0,value)
	SaveData.master_vol = value
 
func _on_Music_value_changed(value):
	volume(1,value)
	SaveData.music_vol = value
 
 
func _on_Sound_Fx_value_changed(value):
	volume(2,value)
	SaveData.soundfx_vol = value
 
func volume(bus_index, value):
	AudioServer.set_bus_volume_db(bus_index, linear2db(value)-30)
