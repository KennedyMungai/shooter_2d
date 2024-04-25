extends CharacterBody2D

const PLAYER_SPEED: float = 500

var can_laser: bool = true
var can_grenade: bool = true


func _process(_delta: float) -> void:
	var direction = Input.get_vector('left', 'right', 'up','down')
	velocity = direction * PLAYER_SPEED
	move_and_slide()


func _unhandled_input(event: InputEvent) -> void:
	if(event.is_action_pressed('primary action')) and can_laser:
		print('Shooting a laser')
		can_laser = false
	elif(event.is_action_pressed('secondary action')) and can_grenade:
		print('Shoot grenade')
		can_grenade = false


func _on_shooting_timer_timeout() -> void:
	can_laser = true


func _on_grenade_timer_timeout() -> void:
	can_grenade = true
