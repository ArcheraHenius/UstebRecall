class_name itemSword
extends Interactable
func _on_body_entered(player: Player) -> void:
	player.stats.max_health +=1
	player.stats.health = player.stats.max_health
	queue_free()
