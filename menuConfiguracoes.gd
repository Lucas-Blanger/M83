extends Popup

# Configuracoes de video
@onready var opcoesExibicao = $"configuracoesTabs/Vídeo/MarginContainer/videoConfiguracoes/modoExibicaoButton"
@onready var exibirFps = $"configuracoesTabs/Vídeo/MarginContainer/videoConfiguracoes/exbirFpsButton"

# Configuracoes de audio
@onready var volumeGeralSlider = $"configuracoesTabs/Áudio/MarginContainer/audioConfiguracao/volumeSlider"
@onready var musicaVolSlider = $"configuracoesTabs/Áudio/MarginContainer/audioConfiguracao/musicVolSlider"

func _ready():
	pass

func _on_modoExibicaoButton_item_selected(index):
	ConfiguracoesGerais.toggle_fullscreen(true if index == 1 else false)


func _on_exbirFpsButton_toggled(button_pressed):
	ConfiguracoesGerais.toggle_fps_display(button_pressed)


func _on_volumeSlider_value_changed(value):
	ConfiguracoesGerais.update_master_vol(value)


func _on_musicVolSlider_value_changed(value):
	ConfiguracoesGerais.update_music_vol(value)

func _on_configuracoesTabs_toggled(button_pressed):
	pass
