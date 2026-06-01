extends Area2D


func _on_body_entered(body):
	if body.is_in_group("personagem"):
		get_tree().reload_current_scene()
		


func _on_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
