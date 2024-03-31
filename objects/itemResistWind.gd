class_name  itemResistWind
extends Interactable
func _on_body_entered(player: Player) -> void:
	player.stats.resistWind = true
	queue_free()
