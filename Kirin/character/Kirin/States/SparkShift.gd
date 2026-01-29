extends CharacterState

const MIN_AIRDASH_HEIGHT = 0
const BACKDASH_LAG_FRAMES = 4
const Y_MODIFIER = "0.5"
const MIN_IASA = 0
const MAX_IASA = 13
const COMBO_IASA = 12

export  var dir_x = "0.0"
export  var dir_y = "0.0"
export  var speed = "20.0"
export  var fric = "0.05"
var startup_lag_frames = 0

func _frame_0():
	var force = xy_to_dir(data.x, data.y, speed)
	var dir = xy_to_dir(data.x, data.y)
	var back = false
	if host.combo_count > 0:
		starting_iasa_at = COMBO_IASA
	else :
		starting_iasa_at = fixed.round(fixed.add(fixed.mul(fixed.vec_len(dir.x, dir.y), str(MAX_IASA - MIN_IASA)), str(MIN_IASA)))
	iasa_at = starting_iasa_at
	if "-" in force.x:
		if host.get_facing() == "Right" and data.x != 0:
			anim_name = "SparkShift"
			back = true
		else :
			anim_name = "SparkShift"
	else :
		if host.get_facing() == "Left" and data.x != 0:
			anim_name = "SparkShift"
			back = true
		else :
			anim_name = "SparkShift"
	if back and host.combo_count <= 0:
		backdash_iasa = true
		beats_backdash = false

		host.hitlag_ticks += BACKDASH_LAG_FRAMES
		host.add_penalty(5)
	else :
		backdash_iasa = false
		beats_backdash = true


	host.apply_force(force.x, fixed.mul(force.y, Y_MODIFIER) if "-" in force.y else force.y)

