extends CanvasLayer

@onready var label_control = $Control


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("left"):
		label_control.prev_entry()
	elif event.is_action_pressed("right"):
		label_control.next_entry()
	elif event.is_action_pressed("confirm"):
		label_control.confirm()
