extends CharacterState

func _frame_0():
		host.start_invulnerability()
		host.start_projectile_invulnerability()

func _frame_10():
	host.end_invulnerability()
	host.end_projectile_invulnerability()
