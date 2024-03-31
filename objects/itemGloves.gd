class_name  itemGloves
extends Interactable
func _on_body_entered(player: Player) -> void:
	player.stats.slideAbility = true
	player.stats.climbAbility = true
	queue_free()
