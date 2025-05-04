extends Control

var counter = 2
var counter2 = 2

func menu():
	get_tree().change_scene_to_file("res://scenes/scene/menu.tscn")

func _ready() -> void:
	$Control/Label2.text = str(counter)
	$Control2/Label.text = str(counter2)
	
func _on_button_pressed() -> void:
	counter -= 1
	$Control/Label2.text = str(counter)

func _on_button_12_pressed() -> void:
	counter += 1
	$Control/Label2.text = str(counter)

func _on_button_21_pressed() -> void:
	counter2 -= 1
	$Control2/Label.text = str(counter)

func _on_button_22_pressed() -> void:
	counter2 += 1
	$Control2/Label.text = str(counter)

func _on_button_123_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/scene/mode_1_game.tscn")


func _on_exit_pressed() -> void:
	menu()
