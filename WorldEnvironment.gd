extends WorldEnvironment

func _ready():
	ConfiguracoesGerais.connect("iluminacaoToggled", Callable(self, "_on_iluminacaoToggled"))
	ConfiguracoesGerais.connect("brilhoUpdate", Callable(self, "_on_brilhoUpdate"))
	

func _on_iluminacaoToggled(value):
	environment.glow_enabled = value
	
	
func _on_brilhoUpdate(value):
	environment.adjustment_brightness = value
