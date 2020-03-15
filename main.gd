extends Node2D
#
#get sprite settings for transport
onready var sryKnight = get_node("player/armor")


#var list (non object)
onready var spd = sryKnight.speed
onready var grv = sryKnight.gravity
onready var frc = sryKnight.friction
onready var acc = sryKnight.acceleration
onready var jmp = sryKnight.jump_speed
onready var Vel_X_absolute = abs(sryKnight.velocity.x)
onready var Vel_Y_absolute = abs(sryKnight.velocity.y)

onready var dbgSpeed = sryKnight.velocity

func _ready():
	pass

func _physics_process(delta):
	dbgSpeed = sryKnight.velocity
	print(dbgSpeed)
	pass
	


#things left to break out: location(vec2), speed(vec2)
