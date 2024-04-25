extends Node2D


func _on_gate_player_entered_gate(body) -> void:
	print('Player has entered gate external')
	print(body)
