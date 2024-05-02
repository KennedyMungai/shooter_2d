extends LevelParent


func _on_doorway_body_entered(_body: Node2D) -> void:
	var tween = create_tween()
	tween.tween_property($player, 'player_speed', 0, 0.5)
