extends Control

@onready var button11 = $"menu/button-start/Button"
@onready var button12 = $"menu/button-start/Button2"
@onready var button21 = $"menu/button-start/Button3"
@onready var button22 = $"menu/button-start/Button4"
@onready var button23 = $"menu/button-start/Button5"

func menu():
	get_tree().change_scene_to_file("res://scenes/scene/menu.tscn")

func visidle():
	button11.visible = false
	button12.visible = false
	button21.visible = true
	button22.visible = true
	button23.visible = true

func _on_touch_screen_button_pressed():
	var APlayer = $AnimationPlayer
	APlayer.play("switch")

func _on_button_pressed():
	var APlayer = $AnimationPlayer
	APlayer.play("switch")
	visidle()
#scene: String):
#    get_tree().change_scene_to_file(path_to_scene)

func _on_button_3_pressed() -> void:
	var APlayer = $AnimationPlayer
	APlayer.play("transition")
	get_tree().change_scene_to_file("res://scenes/scene/mode_1_pre-game.tscn")

func _on_button_4_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/scene/construction.tscn")

func _on_button_5_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/scene/construction.tscn")

func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/scene/construction.tscn")
