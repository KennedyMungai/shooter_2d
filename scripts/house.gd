extends Area2D


func _on_house_entered(body: Node2D) -> void:
	#TODO: Add a check for the player object
	print('Player has entered')


func _on_house_exited(body: Node2D) -> void:
	#TODO: Add a check for thhe player object
	print('Player has exited')
