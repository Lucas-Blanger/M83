extends Control

	
func _on_quitButton_pressed():
	get_tree().quit
	

func _on_StartButton_pressed():
	get_tree().change_scene("res://fases/fase2/fase2.tscn")


func _on_MenuInicialButton_pressed():
	get_tree().change_scene("res://Node2D.tscn")


func _on_TextureButton_pressed():
	get_tree().change_scene("res://fases/fase3/introducao3.tscn")
