extends CharacterState

export var speed_modifier_amount = "19.0"

var speed_modifier

var got_hit = false

func _frame_0():
	if data:
		speed_modifier = fixed.round(fixed.mul(fixed.sub(fixed.div(str(data["Distance"].x), "100"), "0.5"), speed_modifier_amount))
	host.apply_force_relative(speed_modifier, 0)
	got_hit = false

func _frame_7():
	if not got_hit:
		host.has_hyper_armor = true
	host.start_projectile_invulnerability()

func _frame_16():
	host.has_hyper_armor = false
	host.end_projectile_invulnerability()

func on_got_hit():
	got_hit = true
	feinting = false
	host.feinting = false

func set_facing(facing:int):
	for child in get_children():
		if child.get("facing") != null:
			child.facing = facing
			if child.has_method("init"):
				child.init()

func get_facing():
	for child in get_children():
		if child.get("facing"):
			return child.facing
	return null
