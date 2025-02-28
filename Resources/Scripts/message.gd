extends PanelContainer
class_name Message

@export var content : String
@export var selected : bool
var callback : Callable

@onready var __label = $RichTextLabel

var default_bg = Color("#c7f0d8")
var sel_bg = Color("#43523d")

var stylebox = get_theme_stylebox("panel").duplicate()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	__label.text = content


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if selected:
		stylebox.set("bg_color", sel_bg)
		__label.set("theme_override_colors/default_color", default_bg)
	else:
		stylebox.set("bg_color", default_bg)
		__label.set("theme_override_colors/default_color", sel_bg)
		
	add_theme_stylebox_override("panel", stylebox)
