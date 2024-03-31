class_name  WindArea
extends Interactable
var veltemp
func _on_body_entered(player: Player) -> void:
	player.stats.isWindBlow = true
	#player.velocity.x=10
	#queue_free()
func _on_body_exited(player: Player) -> void:
	player.stats.isWindBlow = false
