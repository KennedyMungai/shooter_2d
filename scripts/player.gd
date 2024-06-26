extends CharacterBody2D

@export var player_speed: float = 500


var can_laser: bool = true
var can_grenade: bool = true


signal laser_fired(emitter_position: Vector2, fired_direction: Vector2)
signal grenade_thrown(emitter_position: Vector2, direction: Vector2)


func _process(_delta: float) -> void:
	var direction = Input.get_vector('left', 'right', 'up','down')
	velocity = direction * player_speed
	move_and_slide()
	
	look_at(get_global_mouse_position())


func _unhandled_input(event: InputEvent) -> void:
	var player_direction: Vector2 = (get_global_mouse_position() - position).normalized()
	
	if(event.is_action_pressed('primary action')) and can_laser:
		var laser_markers = $laser_start_positions.get_children()
		var selected_laser = laser_markers[randi() % laser_markers.size() - 1]
		can_laser = false
		laser_fired.emit(selected_laser.global_position, player_direction)
		$flash_emitter.emitting = true
	elif(event.is_action_pressed('secondary action')) and can_grenade:
		can_grenade = false
		grenade_thrown.emit($grenade_starter_position/grenade_starter_marker.global_position, player_direction)


func _on_shooting_timer_timeout() -> void:
	can_laser = true


func _on_grenade_timer_timeout() -> void:
	can_grenade = true
