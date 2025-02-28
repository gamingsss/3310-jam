extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _input(event) -> void:
	if event.is_pressed():
		GameManager.switch_scene("res://Resources/Scenes/Menu.tscn")
