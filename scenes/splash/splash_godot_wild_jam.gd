extends Node2D

func _ready():
	# Get a reference to the ColorRect or TextureRect node
	%AlphaRect.color = Color(0, 0, 0, 1)
	%AlphaRect2.color = Color(0, 0, 0, 1)
	
	var tween = get_tree().create_tween()
	tween.tween_property($AlphaRect2, "color", Color(0, 0, 0, 1), 1)	# kill time to make the fade smoother
	tween.tween_property($AlphaRect2, "color", Color(0, 0, 0, 0), 1)
	tween.tween_property($AlphaRect2, "color", Color(0, 0, 0, 0), 0.5) 	# kill time for eyes to hang 
	
	tween.tween_property($AlphaRect, "color", Color(0, 0, 0, 0), 2)
	tween.tween_property($AlphaRect, "color", Color(0, 0, 0, 0), 1)		# kill time to show logo before snapping
	tween.tween_property($AlphaRect2, "color", Color(0, 0, 0, 1), 0.5)
	
	tween.tween_callback(change_scene)

func change_scene():
	get_tree().change_scene_to_file("res://scenes/splash/splash_theme.tscn")

