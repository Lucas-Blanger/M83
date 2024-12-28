extends Control

onready var opcoesMenu = $"opcoesMenu"

func _ready():
	$VBoxContainer/startButton.grab_focus()

func _on_quitButton_pressed():
	get_tree().quit

func _on_optionButton_pressed():
	opcoesMenu.popup_centered()

func _on_aboutButton_pressed():
	get_tree().change_scene("res://sobre.tscn")
	
func _on_startButton_pressed():
	get_tree().change_scene("res://fases/fase1/introducao.tscn")
