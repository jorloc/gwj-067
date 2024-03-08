extends TextureButton

@export var button_text : String

# Called when the node enters the scene tree for the first time.
func _ready():
	if button_text:
		$Label.text = button_text


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
