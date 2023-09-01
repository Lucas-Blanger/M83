extends Node

signal fps_display(value)

func toggle_fullscreen(value):
	OS.window_fullscreen = value

	
func toggle_fps_display(value):
	emit_signal("fps_displayed", value)
	
func update_master_vol(vol):
	AudioServer.set_bus_volume_db(0, vol)
	
func update_music_vol(vol):
	AudioServer.set_bus_volume_db(0, vol)
	
