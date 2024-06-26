extends Area2D

const LASER_SPEED: int = 2000

var speed: int = 1000
var direction: Vector2 = Vector2.UP


func _process(delta: float) -> void:
	position += direction * LASER_SPEED * delta


func _on_laser_lifespan_timeout() -> void:
	queue_free()


func _on_body_entered(body: Node2D) -> void:
	if "hit" in body:
		queue_free()
