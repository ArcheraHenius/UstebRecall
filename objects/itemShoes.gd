class_name itemShoes
extends Interactable
func _on_body_entered(player: Player) -> void:
	player.stats.canDash = true
	queue_free()
