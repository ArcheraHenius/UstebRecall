class_name itemHPUP
extends Interactable
func _on_body_entered(player: Player) -> void:
	player.stats.canAttack3 =true
	queue_free()
