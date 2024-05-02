extends LevelParent


var outside_level: PackedScene = preload('res://levels/level_2.tscn')


func _on_doorway_body_entered(_body: Node2D) -> void:
	var tween = create_tween()
	tween.tween_property($player, 'player_speed', 0, 0.5)
	get_tree().change_scene_to_packed(outside_level)
