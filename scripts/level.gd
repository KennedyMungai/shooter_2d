extends Node2D


var laser_scene: PackedScene = preload("res://static_game_items/laser.tscn")
var grenade_scene: PackedScene = preload('res://static_game_items/grenade.tscn')


func _on_gate_player_entered_gate(body) -> void:
	print('Player has entered gate external')
	print(body)


func _on_player_laser_fired(emitter_position, direction_fired) -> void:
	var laser = laser_scene.instantiate() as Area2D
	laser.position = emitter_position
	laser.rotation_degrees = direction_fired.angle()
	$projectiles.add_child(laser)


func _on_player_grenade_thrown(emitter_position, direction_thrown) -> void:
	var grenade = grenade_scene.instantiate() as RigidBody2D
	grenade.position = emitter_position
	grenade.linear_velocity = direction_thrown * grenade.GRENADE_SPEED
	$projectiles.add_child(grenade)
