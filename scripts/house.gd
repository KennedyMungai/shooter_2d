extends Area2D


func _on_house_entered(body: Node2D) -> void:
	print('Player has entered')


func _on_house_exited(body: Node2D) -> void:
	print('Player has exited')
