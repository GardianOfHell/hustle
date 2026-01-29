extends CharacterState

func _frame_0():
		host.start_invulnerability()
		host.start_projectile_invulnerability()
		host.set_vel(host.get_facing_int() * 10, 0)

func _frame_13():
		host.end_invulnerability()
		host.end_projectile_invulnerability()

func _tick():
	._tick()
	host.create_speed_after_image("#000000")

func _exit():
	host.set_vel(0, 0)
