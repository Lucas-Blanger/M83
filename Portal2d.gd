tool
extends Area2D

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")

export var next_scene: PackedScene

func _get_configuration_warning() -> String:
	return "The next scene property can't be empty" if not next_scene else ""

func teleport() -> void:
	anim_player.play("fade_out")
	yield(anim_player, "animation_finished")
	get_tree().paused = false
	get_tree().change_scene_to(next_scene)

func _on_body_entered(body) -> void:
	teleport()
