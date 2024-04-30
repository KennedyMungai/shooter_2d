extends RigidBody2D


const GRENADE_SPEED: int = 750


func _ready() -> void:
	linear_velocity = Vector2(15, 3)


func _on_explosion_animation_animation_finished(anim_name: StringName) -> void:
	if(anim_name == "explosion"):
		queue_free()
