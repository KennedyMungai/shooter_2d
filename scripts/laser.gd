extends Area2D

const LASER_SPEED: int = 1500

var speed: int = 1000
var direction: Vector2 = Vector2.UP


func _process(delta: float) -> void:
	position += direction * LASER_SPEED * delta
