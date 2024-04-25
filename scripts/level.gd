extends Node2D


func _on_gate_player_entered_gate(body) -> void:
	print('Player has entered gate external')
	print(body)


func _on_player_laser_fired() -> void:
	print("Laser has been fired external")


func _on_player_grenade_thrown() -> void:
	print("Grenade thrown")
