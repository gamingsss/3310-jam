extends Node

var chats : Array[ChatEntry] = []
var curr_sel = 0
var prev_sel = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	chats.append($Brian)
	chats[-1].callback = func(): GameManager.switch_scene("res://Resources/Scenes/Chats/placehld.tscn")
	chats.append($Clarissa)
	chats[-1].callback = func(): GameManager.switch_scene("res://Resources/Scenes/Chats/placehld.tscn")
	chats.append($Jack)
	chats[-1].callback = func(): GameManager.switch_scene("res://Resources/Scenes/Chats/placehld.tscn")
	chats.append($Brittany)
	chats[-1].callback = func(): GameManager.switch_scene("res://Resources/Scenes/Chats/placehld.tscn")
	chats.append($Derek)
	chats[-1].callback = func(): GameManager.switch_scene("res://Resources/Scenes/Chats/placehld.tscn")
	chats.append($Logan)
	chats[-1].callback = func(): GameManager.switch_scene("res://Resources/Scenes/Chats/placehld.tscn")
	chats.append($Mom)
	chats[-1].callback = func(): GameManager.switch_scene("res://Resources/Scenes/Chats/placehld.tscn")
	chats.append($Dad)
	chats[-1].callback = func(): GameManager.switch_scene("res://Resources/Scenes/Chats/placehld.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if prev_sel != curr_sel:
		chats[prev_sel].selected = false
	chats[curr_sel].selected = true
	prev_sel = curr_sel


func next() -> void:
	if curr_sel < chats.size() - 1:
		curr_sel += 1

func prev() -> void:
	if curr_sel > 0:
		curr_sel -= 1
