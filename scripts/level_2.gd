extends LevelParent


func _on_gate_player_entered_gate(_body) -> void:
	var tween = create_tween()
	tween.tween_property($player, "player_speed", 0, 0.5)