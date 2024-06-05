extends Button

@onready var sound_hover = $SoundHover
@onready var sound_click = $SoundClick

signal click_end()

func _on_mouse_entered():
	sound_hover.play()

func _on_pressed():
	sound_click.play()

func _on_sound_click_finished():
	emit_signal("click_end")
