extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AudioStreamPlayer.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	pass


func _on_restart_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://node_2d.tscn")



func _on_quit_btn_pressed() -> void:
	get_tree().quit()
