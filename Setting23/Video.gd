extends TabBar


func _on_fullscreen_toggled(button_pressed):
	if toggled_on:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		Persistence.config.set_value("Video", "fullscreen", DisplayServer.WINDOW_MODE_FULLSCREEN)
		else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		Persistence.config.set_value("Video", "fullscreen", DisplayServer.WINDOW_MODE_WINDOWED)


func _on_borderless_toggled(button_pressed):
	DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, toggled_on)



func _on_vsync_item_selected(index):
	DisplayServer.window_set_vsync_mode(index)
