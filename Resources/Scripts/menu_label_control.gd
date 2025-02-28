extends Control

var current_entry = 0
var entry_labels : Array[CompressedTexture2D] = []
var entry_bars : Array[CompressedTexture2D] = []
var entry_callbacks : Array[Callable] = []
@onready var label = $Label
@onready var bar = $SideBar


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Fill labels
	entry_labels.append(ResourceLoader.load("res://Assets/Sprites/Labels/nokia phone book uwu.png"))
	entry_labels.append(ResourceLoader.load("res://Assets/Sprites/Labels/nokia mesages _3.png"))
	entry_labels.append(ResourceLoader.load("res://Assets/Sprites/Labels/nokia chat uwu.png"))
	entry_labels.append(ResourceLoader.load("res://Assets/Sprites/Labels/nokia settings uwu.png"))
	entry_labels.append(ResourceLoader.load("res://Assets/Sprites/Labels/nokia who was it uwu.png"))
	
	# Fill bars
	entry_bars.append(ResourceLoader.load("res://Assets/Sprites/Bars/barra dx menu rubrica uwu.png"))
	entry_bars.append(ResourceLoader.load("res://Assets/Sprites/Bars/barra dx menu message _3.png"))
	entry_bars.append(ResourceLoader.load("res://Assets/Sprites/Bars/barra dx menu chat _3.png"))
	entry_bars.append(ResourceLoader.load("res://Assets/Sprites/Bars/barra dx menu setting uwu.png"))
	entry_bars.append(ResourceLoader.load("res://Assets/Sprites/Bars/barra dx menu who was it _3.png"))

	# Fill callbacks
	entry_callbacks.append(func(): pass)
	entry_callbacks.append(func(): pass)
	entry_callbacks.append(func(): GameManager.switch_scene("res://Resources/Scenes/Submenus/chat.tscn"))
	
	label.texture = entry_labels[current_entry]
	bar.texture = entry_bars[current_entry]


func next_entry() -> void:
	if current_entry < (entry_labels.size() - 1) or current_entry < (entry_bars.size() - 1):
		current_entry += 1
	update_entry()

func prev_entry() -> void:
	if current_entry > 0:
		current_entry -= 1
	update_entry()

func confirm() -> void:
	entry_callbacks[current_entry].call()


func update_entry() -> void:
	label.texture = entry_labels[current_entry]
	bar.texture = entry_bars[current_entry]
