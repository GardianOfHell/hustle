extends CharacterState

func _frame_0():
	host.start_invulnerability()
	host.start_projectile_invulnerability()

func _tick():
	._tick()
	host.create_speed_after_image("#00008B")
