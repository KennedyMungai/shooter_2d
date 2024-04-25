extends Node2D

const PLAYER_SPEED: float = 500

func _process(delta: float) -> void:
	var direction = Input.get_vector('left', 'right', 'up','down')
	position += direction * PLAYER_SPEED * delta
