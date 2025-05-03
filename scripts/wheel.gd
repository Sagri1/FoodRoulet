extends Node2D

@export var spin_time: float = 20.0
@export var sectors: int = 8
@export var wheel: Node2D  # Ссылка на ноду колеса (должна быть отдельным Node2D/Sprite2D)

var is_spinning: bool = false
var target_angle: float = 0.0

func spin_wheel():
	if is_spinning or !wheel:
		return
	
	is_spinning = true
	var random_spins: int = randi_range(10, 20)
	target_angle = deg_to_rad(360 * random_spins + randf_range(0, 360))
	
	var tween = create_tween()
	tween.tween_property(
		wheel,  # Применяем tween только к колесу
		"rotation",
		target_angle,
		spin_time
	).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_QUINT)
	
	await tween.finished
	is_spinning = false
	_on_spin_stopped()

func _on_spin_stopped():
	if !wheel:
		return
	
	var sector_size: float = 360.0 / sectors
	var stopped_angle: float = fmod(rad_to_deg(wheel.rotation), 360)  # Используем wheel.rotation
	var selected_sector: int = int(stopped_angle / sector_size)
	
	print("Выбран сектор: ", selected_sector + 1)

func _on_button_pressed():
	spin_wheel()
