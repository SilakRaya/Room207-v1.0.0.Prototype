extends Button

@export var sceneTo:String = ""

# i made this so i can just keep reusing this
func _on_pressed() -> void:
	print("changing scene to: ", sceneTo)
	get_tree().change_scene_to_file(sceneTo)
