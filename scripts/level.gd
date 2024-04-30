extends Node2D

class_name LevelParent


var laser_scene: PackedScene = preload("res://static_game_items/laser.tscn")
var grenade_scene: PackedScene = preload('res://static_game_items/grenade.tscn')


func _on_gate_player_entered_gate(_body) -> void:
	var tween = create_tween()
	tween.tween_property($player, "player_speed", 0, 0.5)


func _on_player_laser_fired(emitter_position, direction_fired) -> void:
	var laser = laser_scene.instantiate() as Area2D
	laser.position = emitter_position
	laser.rotation_degrees = rad_to_deg(direction_fired.angle()) + 90
	laser.direction = direction_fired
	$projectiles.add_child(laser)


func _on_player_grenade_thrown(emitter_position, direction_thrown) -> void:
	var grenade = grenade_scene.instantiate() as RigidBody2D
	grenade.position = emitter_position
	grenade.linear_velocity = direction_thrown * grenade.GRENADE_SPEED
	$projectiles.add_child(grenade)


func _on_house_player_entered() -> void:
	var tween = get_tree().create_tween()
	tween.set_parallel(true)
	tween.tween_property($player/Camera2D, 'zoom', Vector2(1,1), 0.6)
	tween.tween_property($player, "modulate:a", 0.3, 0.6)


func _on_house_player_exited() -> void:
	var tween = get_tree().create_tween()
	tween.tween_property($player/Camera2D, 'zoom', Vector2(0.6, 0.6), 0.6)
	tween.tween_property($player, "modulate:a", 1, 0.6)
