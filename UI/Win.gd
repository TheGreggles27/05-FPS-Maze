extends Control

func _on_Play_pressed():
	get_tree().change_scene("res://Game.tscn")

func _on_Quit_pressed():
	get_tree().quit()

func _ready():
	var sound = get_node_or_null("/root/Win/Win")
	if sound != null:
		sound.playing = true
