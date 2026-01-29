extends SuperMove

func _frame_0():
		host.start_invulnerability()
		host.start_projectile_invulnerability()
		host.opponent.hitlag_ticks = 6

func _frame_7():
	host.change_state("Shun Asura")
