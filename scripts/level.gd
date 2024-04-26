extends Node2D


var laser_scene: PackedScene = preload("res://static_game_items/laser.tscn")
var grenade_scene: PackedScene = preload('res://static_game_items/grenade.tscn')


func _on_gate_player_entered_gate(body) -> void:
	print('Player has entered gate external')
	print(body)


func _on_player_laser_fired(emitter_position) -> void:
	var laser = laser_scene.instantiate()
	laser.position = emitter_position
	$projectiles.add_child(laser)


func _on_player_grenade_thrown(emitter_position, direction_thrown) -> void:
	var grenade: RigidBody2D = grenade_scene.instantiate()
	grenade.position = emitter_position
	grenade.linear_velocity = Vector2.UP * 100
	$projectiles.add_child(grenade)
