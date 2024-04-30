extends Area2D


func _on_house_entered(_body: Node2D) -> void:
	print('Player has entered')


func _on_house_exited(_body: Node2D) -> void:
	print('Player has exited')
