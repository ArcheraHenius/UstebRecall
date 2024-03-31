extends CanvasLayer
var dialogs = []
var current = 0

@onready var content: Label = $Content

func _ready():
	hide_dialog_box()
	show_dialog_box([
		{text= "Press E to continue dialog"},
		{text= "Press A/D to move Left/Right"},
		{text= "Press Space to jump"},
		{text= "Press J to attack"},
		#{text= "Obtain Good Shoes, Press K to slide"},
	])
	
	
func _unhandled_input(event) :
	if event.is_action_pressed("interact"):
		if current+1 <dialogs.size():
			_show_dialog(current+1)
		else:
			hide_dialog_box()
			
		get_viewport().set_input_as_handled()
		
	
func hide_dialog_box():
	content.hide()
	
func show_dialog_box(_dialogs):
	dialogs = _dialogs
	content.show()
	_show_dialog(0)

func _show_dialog(index):
	current = index
	var dialog = dialogs[current]
	content.text = dialog.text
	
