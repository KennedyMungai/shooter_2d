extends RigidBody2D

const GRENADE_SPEED: int = 750

func _ready() -> void:
	linear_velocity = Vector2(15, 3)
