extends CharacterState

func _frame_0():
	host.gozanvel = 0
	if host.initiative and not host.is_grounded():
		host.start_invulnerability()
		host.start_projectile_invulnerability()
	if data:
		host.set_vel(data.x / 10, data.y / 10)

func _frame_4():
		host.start_invulnerability()
		host.start_projectile_invulnerability()

func _frame_6():
		host.end_invulnerability()
		host.end_projectile_invulnerability()

