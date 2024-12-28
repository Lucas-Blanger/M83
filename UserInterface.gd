extends Control

onready var scene_tree: SceneTree = get_tree()
onready var pause_overlay: ColorRect = get_node("PauseOverlay")
onready var score: Label = get_node("Label")

var paused: = false setget set_paused

func _ready() -> void:
	PlayerData.connect("updated", self, "update_interface")
	PlayerData.connect("died", self, "_on_Player_died")
	PlayerData.connect("reset", self, "_on_Player_reset")
	update_interface()

func _unhandled_input(event: InputEvent) -> void:
	if  event.is_action_pressed("pause"):
		self.paused = not paused
		scene_tree.set_input_as_handled()

func _on_voltarButton_button_up():
	PlayerData.score = 0
	get_tree().paused = false
	get_tree().rreload_current_scene()
	

func _on_MenuInicialButton_pressed():
	get_tree().change_scene("res://Node2D.tscn")


func _on_quitButton_pressed():
	get_tree().quit
	
func set_paused(value: bool) -> void:
	paused = value
	scene_tree.paused = value
	pause_overlay.visible = value
	
func update_interface() -> void:
	score.text = "Coletas: %s" % PlayerData.score
