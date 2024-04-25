extends CharacterBody2D

const PLAYER_SPEED: float = 500

func _process(delta: float) -> void:
	var direction = Input.get_vector('left', 'right', 'up','down')
	position += direction * PLAYER_SPEED * delta


func _unhandled_input(event: InputEvent) -> void:
	if(event.is_action_pressed('primary action')):
		print('Shooting a laser')
	elif(event.is_action_pressed('secondary action')):
		print('Shoot grenade')
