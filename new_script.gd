extends Node2D

#get sprite settings for transport


onready var sryKnight = get_node("player/armor")



#get ui labels
onready var spdOut = get_node("player/armor/Camera2D/uiBox/titleVB/debugsVB/spdHB/spdPanel")
onready var accOut = get_node("player/armor/Camera2D/uiBox/titleVB/debugsVB/spdHB/accPanel")
onready var frcOut = get_node("player/armor/Camera2D/uiBox/titleVB/debugsVB/spdHB/frcPanel")

func updateUI():
	var spd = sryKnight.speed
	spdOut.set_text()
	pass

func _physics_process(delta):
	var jmp = sryKnight.jump_speed
	var grv = sryKnight.gravity
	var frc = sryKnight.friction
	var acc = sryKnight.acceleration
	
	updateUI()
	
