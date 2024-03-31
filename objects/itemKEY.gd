class_name itemKEY

extends Interactable
func _on_body_entered(player: Player) -> void:
	player.stats.haveKey1 = true
	queue_free()
