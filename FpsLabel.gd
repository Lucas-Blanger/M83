extends Label

func _ready():
	ConfiguracoesGerais.connect("fps_displayed", Callable(self, "_on_fps_displayed"))
	
func _process(delta):
	text = "FPS: %s" % [Engine.get_frames_per_second()]
	
func _on_fps_displayed(value):
	visible = value
	
