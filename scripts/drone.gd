extends CharacterBody2D


func _physics_process(_delta: float) -> void:
	var direction = Vector2.RIGHT
	velicity = direction * 300
	move_and_slide()
