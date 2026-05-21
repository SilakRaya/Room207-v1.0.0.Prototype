extends Control
var characterSelects = ""

func _ready():
	$AnimationPlayer.play("RESET")
	$AnimationPlayer.play("Intro")
	await $AnimationPlayer.animation_finished
	$AnimationPlayer.play("MainMenu")

func _on_new_game_pressed():
	$AnimationPlayer.play("NewGame")
	print("New Game button pressed")

func _on_options_pressed():
	get_tree().change_scene_to_file("res://Main-Menu/Options.tscn")
	print("Options button pressed")

func _on_credits_pressed():
	get_tree().change_scene_to_file("res://Main-Menu/Credits.tscn")
	print("Credits button pressed")

func _on_exit_pressed() -> void:
	get_tree().quit()

func _on_marvin_pressed() -> void:
	characterSelects = "Marvin"
	$AnimationPlayer.play("EpisodeSelect")

func _on_jolina_pressed() -> void:
	characterSelects = "Jolina"
	$AnimationPlayer.play("EpisodeSelect")

func _on_episode_one_pressed() -> void:
	$AnimationPlayer.play("eraseTransition")
	await $AnimationPlayer.animation_finished
	match characterSelects:
		"Jolina":
			print("Jolina selected")
			#Points to episode one
			get_tree().change_scene_to_file("res://EpisodeOne/Acts/ActOne.tscn")
			
		"Marvin":
			print("Marvin selected")
			#Points to episode one
			get_tree().change_scene_to_file("res://EpisodeOne/Acts/ActOne.tscn")
			


func _on_episode_two_pressed() -> void:
	$AnimationPlayer.play("eraseTransition")
	await $AnimationPlayer.animation_finished
	match characterSelects:
		"Jolina":
			print("Jolina selected")
			get_tree().change_scene_to_file("res://Episodes-Menu/EpisodeEmpty.tscn")
			
		"Marvin":
			print("Marvin selected")
			get_tree().change_scene_to_file("res://Episodes-Menu/EpisodeEmpty.tscn")


func _on_episode_three_pressed() -> void:
	$AnimationPlayer.play("eraseTransition")
	await $AnimationPlayer.animation_finished
	match characterSelects:
		"Jolina":
			print("Jolina selected")
			get_tree().change_scene_to_file("res://Episodes-Menu/EpisodeEmpty.tscn")
			
		"Marvin":
			print("Marvin selected")
			get_tree().change_scene_to_file("res://Episodes-Menu/EpisodeEmpty.tscn")


func _on_episode_four_pressed() -> void:
	$AnimationPlayer.play("eraseTransition")
	await $AnimationPlayer.animation_finished
	match characterSelects:
		"Jolina":
			print("Jolina selected")
			get_tree().change_scene_to_file("res://Episodes-Menu/EpisodeEmpty.tscn")
			
		"Marvin":
			print("Marvin selected")
			get_tree().change_scene_to_file("res://Episodes-Menu/EpisodeEmpty.tscn")


func _on_episode_five_pressed() -> void:
	$AnimationPlayer.play("eraseTransition")
	await $AnimationPlayer.animation_finished
	match characterSelects:
		"Jolina":
			print("Jolina selected")
			get_tree().change_scene_to_file("res://Episodes-Menu/EpisodeEmpty.tscn")
			
		"Marvin":
			print("Marvin selected")
			get_tree().change_scene_to_file("res://Episodes-Menu/EpisodeEmpty.tscn")


func _on_area_2d_mouse_entered() -> void:
	$AnimationPlayer.play("newGameMouseE")
