extends Node

var current_scene


func _ready() -> void:
	current_scene = get_tree().root.get_child(-1)


func _def_switch_scene(path) -> void:
	current_scene.free()
	
	var new_scene = ResourceLoader.load(path)
	
	current_scene = new_scene.instantiate()
	
	get_tree().root.add_child(current_scene)
	get_tree().current_scene = current_scene

func switch_scene(path) -> void:
	_def_switch_scene.call_deferred(path)
