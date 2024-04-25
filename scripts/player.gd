extends CharacterBody2D

const PLAYER_SPEED: float = 500

var can_laser: bool = true
var can_grenade: bool = true


signal laser_fired(emitter_position: Vector2)
signal grenade_thrown


func _process(_delta: float) -> void:
	var direction = Input.get_vector('left', 'right', 'up','down')
	velocity = direction * PLAYER_SPEED
	move_and_slide()


func _unhandled_input(event: InputEvent) -> void:
	if(event.is_action_pressed('primary action')) and can_laser:
		var laser_markers = $laser_start_positions.get_children()
		var selected_laser = laser_markers[randi() % laser_markers.size() - 1]
		can_laser = false
		laser_fired.emit(selected_laser.global_position)
	elif(event.is_action_pressed('secondary action')) and can_grenade:
		can_grenade = false
		grenade_thrown.emit()


func _on_shooting_timer_timeout() -> void:
	can_laser = true


func _on_grenade_timer_timeout() -> void:
	can_grenade = true
