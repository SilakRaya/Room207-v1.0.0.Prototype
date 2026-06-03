extends Node2D

var move_left_started : bool = false
var move_right_started : bool = false
var move_reset : bool = false
var zoom_To_Jolina : bool = false
var firefly_Move : bool = false
var firefly_Idle : bool = false

func _ready() -> void:
	$CameraZoom.play("zoomOut")
	$Event.play("FadeIn")
	#this method prevents inputs
	%Dialogue.set_process(false)
	$ColorRect.visible = true
	$Dialogue.visible = false
	%Firefly2.visible = false

func _process(_delta: float) -> void:
	dialogue_Sequence()

func dialogue_Sequence():
	var index = %Dialogue.dialogue
	print("Index: ", index)
	
	match (index):
		14:
			if not move_left_started:
				move_left_started = true
				$CameraZoom.play("moveLeft")
		15:
			if not move_right_started:
				move_right_started = true
				$CameraZoom.play("moveRight")
		16:
			if not move_reset:
				move_reset = true
				$CameraZoom.play("reset")
		19:
			if not zoom_To_Jolina:
				zoom_To_Jolina = true
				$CameraZoom.play("zoom_In_Jolina")
		22:
			if not firefly_Move:
				firefly_Move = true
				$Event.play("FireFly_Go_Jolina")
		23:
			if not firefly_Idle:
				firefly_Idle = true
				$Event.play("Firefly_Idle")
			

func _on_camera_zoom_animation_finished(anim_name: StringName) -> void:
	if anim_name == "zoomOut":
		print("Zoom out finished")
		$CameraZoom.play("Idle")
	if anim_name == "moveLeft":
		print("Moving Left Finished")
	
	if anim_name == "moveRight":
		print("Moving Right Finished")
	
	if anim_name == "zoom_In_Jolina":
		print("Close up to Jolina Finished")

func _on_event_animation_finished(anim_name: StringName) -> void:
	if anim_name == "FadeIn":
		$Event.play("dialogueFadeIn")
		await $Event.animation_finished
		print("Player can now press inputs")
		$Dialogue.set_process(true)
	
	if anim_name == "FireFly_Go_Jolina":
		$Event.play("Firefly_Idle")
