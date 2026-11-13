extends Node2D
class_name MainGame

var timer: Timer = Timer.new()

func _ready() -> void:
	timer.wait_time = 1.0  # 1 second
	timer.connect("timeout", _on_timer_timeout)
	add_child(timer)
	timer.start()

func _on_timer_timeout():
	print("Timer finished, function called!")

func _input(event: InputEvent) -> void:
	if event.is_action_released("ui_cancel"):
		get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
