extends Node2D
class_name MainMenu

func _input(event: InputEvent) -> void:
	if event.is_action_released("ui_accept"):
		get_tree().change_scene_to_file("res://Scenes/main_game.tscn")
	elif event.is_action_released("ui_cancel"):
		get_tree().quit()
