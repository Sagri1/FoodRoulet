extends Node2D
func menu():
	get_tree().change_scene_to_file("res://scenes/scene/menu.tscn")

func _on_button_pressed() -> void:
	menu()
