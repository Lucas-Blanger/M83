extends Popup

# Configuracoes de video
@onready var opcoesExibicao = $"configuracoesTabs/Vídeo/MarginContainer/videoConfiguracoes/modoExibicaoButton"
@onready var vsyncButton = $"configuracoesTabs/Vídeo/MarginContainer/videoConfiguracoes/vsyncButton"
@onready var exibirFps = $"configuracoesTabs/Vídeo/MarginContainer/videoConfiguracoes/exbirFpsButton"
@onready var maxFpsVal = $"configuracoesTabs/Vídeo/MarginContainer/videoConfiguracoes/HBoxContainer/maxFpsSlider"
@onready var maxFpsSlider = $"configuracoesTabs/Vídeo/MarginContainer/videoConfiguracoes/HBoxContainer/maxFpsSlider"
@onready var iluminacaoButton = $"configuracoesTabs/Vídeo/MarginContainer/videoConfiguracoes/iluminacaoButton"
@onready var brilhoSlider = $"configuracoesTabs/Vídeo/MarginContainer/videoConfiguracoes/brilhoSlider"

# Configuracoes de audio
@onready var volumeGeralSlider = $"configuracoesTabs/Áudio/MarginContainer/audioConfiguracao/volumeSlider"
@onready var musicaVolSlider = $"configuracoesTabs/Áudio/MarginContainer/audioConfiguracao/musicVolSlider"
@onready var efeitosVolSlider = $"configuracoesTabs/Áudio/MarginContainer/audioConfiguracao/efeitosVolSlider"

# Configuracoes de jogo
@onready var campoVisaoVal = $"configuracoesTabs/Jogo/MarginContainer/jogoConfiguracao/HBoxContainer2/campoVisaoVal"
@onready var campoVisaoSlider = $"configuracoesTabs/Jogo/MarginContainer/jogoConfiguracao/HBoxContainer2/campoVisaoSlider"
@onready var mouseSenseVal = $"configuracoesTabs/Jogo/MarginContainer/jogoConfiguracao/HBoxContainer3/mouseSenseVal"
@onready var mouseSenseSlider = $"configuracoesTabs/Jogo/MarginContainer/jogoConfiguracao/HBoxContainer3/mouseSenseSlider"

func _ready():
	pass

func _on_modoExibicaoButton_item_selected(index):
	ConfiguracoesGerais.toggle_fullscreen(true if index == 1 else false)


func _on_vsyncButton_toggled(button_pressed):
	ConfiguracoesGerais.toggle_vsync(button_pressed)


func _on_exbirFpsButton_toggled(button_pressed):
	ConfiguracoesGerais.toggle_exibirFps(button_pressed)


func _on_maxFpsSlider_value_changed(value):
	ConfiguracoesGerais.set_maxFps(value)
	maxFpsVal.text = str(value) if value < maxFpsSlider.max_value else "max"


func _on_iluminacaoButton_toggled(button_pressed):
	ConfiguracoesGerais.toggle_iluminacao(button_pressed)


func _on_brilhoSlider_value_changed(value):
	ConfiguracoesGerais.update_brilho(value)


func _on_volumeSlider_value_changed(value):
	ConfiguracoesGerais.update_master_vol(value)


func _on_musicVolSlider_value_changed(value):
	pass


func _on_efeitosVolSlider3_value_changed(value):
	pass # Replace with function body.


func _on_campoVisaoSlider_value_changed(value):
	ConfiguracoesGerais.uptade_campoVisao(value)
	campoVisaoVal.text = str(value)


func _on_mouseSenseSlider_value_changed(value):
	ConfiguracoesGerais.update_mouse_sens(value)
	mouseSenseVal.text = str(value)
