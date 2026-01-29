extends SuperMove

func _frame_3():
		host.start_invulnerability()
		host.start_projectile_invulnerability()
		host.opponent.hitlag_ticks = 16

func _tick():
	if current_tick > 10 and host.is_grounded():
		host.change_state("MisogiGrounded")
