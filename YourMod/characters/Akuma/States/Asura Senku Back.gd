extends CharacterState

func _frame_2():
		host.start_invulnerability()
		host.start_projectile_invulnerability()

func _frame_15():
		host.end_invulnerability()
		host.end_projectile_invulnerability()
		host.change_state("Asura Backward")
