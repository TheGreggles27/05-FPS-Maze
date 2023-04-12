extends Area


func _ready():
	pass


func _on_key_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "Player":
		var exit = get_node_or_null("//root/Game/Maze/Exit")
		if exit != null:
			var sound = get_node_or_null("/root/Game/Key")
			if sound != null:
				sound.playing = true
			exit.unlock()
			queue_free()
