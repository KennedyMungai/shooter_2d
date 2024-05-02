extends LevelParent

var inside_level: PackedScene = preload('res://levels/level_3.tscn')


func _on_gate_player_entered_gate(_body) -> void:
	var tween = create_tween()
	tween.tween_property($player, "player_speed", 0, 0.5)
	get_tree().change_scene_to_packed(inside_level)
