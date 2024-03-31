class_name Stats
extends Node

signal health_changed
signal energy_changed
@export var isWindBlow: bool = false
@export var max_health: int = 3
@export var max_energy: float = 10
@export var energy_regen: float = 0.8
@export var slideAbility :bool = false  #是否有滑墙能力
@export var climbAbility :bool = false  #是否有爬墙能力
@export var canAttack3 :bool = false  #是否有三连击能力
@export var resistWind :bool = false  #是否有抵抗风暴的能力，影响在地图风暴之径的移动速度。
@export var resistOverweight :bool = false  #是否有抵抗超重的能力，影响在超重之间的移动速度。
@export var canDash :bool = false  #是否有抵抗冲刺，影响在超重之间的移动速度。
@export var haveKey1 :bool = false  #是否有抵抗冲刺，影响在超重之间的移动速度。

@onready var health: int = max_health:
	set(v):
		v = clampi(v, 0, max_health)
		if health == v:
			return
		health = v
		health_changed.emit()

@onready var energy: float = max_energy:
	set(v):
		v = clampf(v, 0, max_energy)
		if energy == v:
			return
		energy = v
		energy_changed.emit()


func _process(delta: float) -> void:
	energy += energy_regen * delta


func to_dict() -> Dictionary:
	return {
		max_energy=max_energy,
		max_health=max_health,
		
		slideAbility = slideAbility ,
		climbAbility =climbAbility,
		canAttack3  =canAttack3 ,
		resistWind  =resistWind ,
		resistOverweight =resistOverweight ,
		haveKey1 =haveKey1,
		#health=health,
		
	}


func from_dict(dict: Dictionary) -> void:
	max_energy = dict.max_energy
	max_health = dict.max_health
	#health = dict.health
	slideAbility = dict.slideAbility 
	climbAbility =dict.climbAbility
	canAttack3  =dict.canAttack3 
	resistWind  =dict.resistWind 
	resistOverweight =dict.resistOverweight 

	
