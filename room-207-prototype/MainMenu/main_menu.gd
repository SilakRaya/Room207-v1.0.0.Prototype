extends Control

func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://MainMenu/options.tscn")


func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://MainMenu/credits.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_new_game_pressed() -> void:
	get_tree().change_scene_to_file("res://Ep1/Scenes/SceneA1.tscn")
