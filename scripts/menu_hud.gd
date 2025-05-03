extends Control


func _on_touch_screen_button_pressed():
	var APlayer = $AnimationPlayer
	APlayer.play("switch")


func _on_button_pressed():
	var APlayer = $AnimationPlayer
	APlayer.play("switch")

#scene: String):
#    get_tree().change_scene_to_file(path_to_scene)
