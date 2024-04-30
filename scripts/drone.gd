extends CharacterBody2D


func _physics_process(_delta: float) -> void:
	var direction = Vector2.RIGHT
	velocity = direction * 300
	move_and_slide()


func hit() -> void:
	print('Damage')
