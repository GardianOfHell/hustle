extends CharacterState

func _frame_3():
		host.start_invulnerability()
		host.start_projectile_invulnerability()
		host.asuraX = data.x
		host.asuraY = data.y

func _frame_13():
		host.end_invulnerability()
		host.end_projectile_invulnerability()
		host.change_state("Asura Forward")
