extends CanvasLayer

@onready var chat_control = $Control


func _input(event) -> void:
	if event.is_action_pressed("up"):
		chat_control.prev()
	elif event.is_action_pressed("down"):
		chat_control.next()
	elif event.is_action_pressed("confirm"):
		pass
