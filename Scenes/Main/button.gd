extends Button
func _pressed():
	print("click me")
	get_tree().change_scene_to_file("res://Scenes/Title/title.tscn")
