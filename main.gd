extends Node2D

#get sprite settings for transport
onready var sryKnight = get_node("player/armor")

#get ui labels
onready var spdOut = get_node("player/armor/Camera2D/uiBox/tVB/dVB/spdHB/spdPanel")
onready var accOut = get_node("player/armor/Camera2D/uiBox/tVB/dVB/accHB/accPanel")
onready var frcOut = get_node("player/armor/Camera2D/uiBox/tVB/dVB/frcHB/frcPanel")
onready var velxOut = get_node("player/armor/Camera2D/uiBox/tVB/dVB2/VelxHB/velxBar")

#var list (non object)
onready var spd = $player/armor.speed
onready var grv = $player/armor.gravity
onready var frc = $player/armor.friction
onready var acc = $player/armor.acceleration
onready var jmp = $player/armor.jump_speed
onready var vely = $player/armor.velocity.x



func _ready():
	pass

func updateUi():
	spd = sryKnight.speed
	grv = sryKnight.gravity
	frc = sryKnight.friction
	acc = sryKnight.acceleration
	jmp = sryKnight.jump_speed
	vely = sryKnight.velocity.x
	
	spdOut.set_text(String(sryKnight.speed))
	accOut.set_text(String(sryKnight.acceleration))
	frcOut.set_text(String(sryKnight.friction))
	velxOut.set_value(sryKnight.velocity.x)

func _physics_process(delta):
	updateUi()
	print(spd)
