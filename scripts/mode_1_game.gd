extends Node2D

var recept = ['Курица + шоколад + перец чили','Бекон + мороженое + кленовый сироп','Сосиски + варенье + горчица','Говядина + кофе + чеснок','Салями + мёд + арахисовая паста','Пицца + ананас + соевый соус','Лапша + кетчуп + сахарная пудра','Картошка фри + ванильный йогурт + укроп','Рис + клубника + бальзамический уксус','Гречка + апельсиновый сок + лук']
func menu():
	get_tree().change_scene_to_file("res://scenes/scene/menu.tscn")
func _ready() -> void:
	$Label.text = str('')
func _on_button_pressed() -> void:
	$Label.text= str(recept[randf_range(0, 4)])


func _on_exit_pressed() -> void:
	menu()
