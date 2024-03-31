class_name CellarDoor
extends Interactable
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var cellar_door: CellarDoor = $"."

func _on_body_entered(player: Player) -> void:
	if player.stats.haveKey1:
		queue_free()
	

