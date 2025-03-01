extends ScrollContainer

func _input(event) -> void:
	if event.is_action_pressed("down"):
		await set_deferred("scroll_vertical", get_v_scroll() + 24)
	if event.is_action_pressed("up"):
		await set_deferred("scroll_vertical", get_v_scroll() - 24)
