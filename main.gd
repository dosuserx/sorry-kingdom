extends Node2D
#
#get sprite settings for transport
onready var sryKnight = get_node("player/armor")

#var list (non object)
onready var spd = $player/armor.speed
onready var grv = $player/armor.gravity
onready var frc = $player/armor.friction
onready var acc = $player/armor.acceleration
onready var jmp = $player/armor.jump_speed
onready var hVel = abs($player/armor.velocity.x)



func _ready():
	pass



func _physics_process(delta):
	pass
	
