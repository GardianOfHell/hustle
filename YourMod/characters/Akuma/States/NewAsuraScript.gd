extends CharacterState

func _frame_0():
		host.start_invulnerability()
		host.start_projectile_invulnerability()
		host.set_vel(host.asuraX * 10, host.asuraY * 7)
		if host.get_facing_int() == 1 && host.asuraX < 0 or host.get_facing_int() == -1 && host.asuraX > 0 :
			anim_name = "RollBackward"
		else:
			anim_name = sprite_animation

func _frame_15():
		host.end_invulnerability()
		host.end_projectile_invulnerability()

func _tick():
	._tick()
	host.create_speed_after_image("#000000")

func _exit():
	host.set_vel(0, 0)
