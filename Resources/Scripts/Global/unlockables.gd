extends Node

const UNLOCKABLES_NUMBER = 256

var unlocked : Array[bool] = []


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(UNLOCKABLES_NUMBER):
		unlocked.append(false)


func unlock_id(id) -> void:
	if not unlocked[id]:
		unlocked[id] = true

func is_unlocked(id) -> bool:
	return unlocked[id]
