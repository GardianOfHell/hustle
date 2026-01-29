extends ThrowState



func _frame_0():
		host.opponent.visible = false
		host.start_invulnerability()
		host.start_projectile_invulnerability()

func _frame_23():
		host.opponent.visible = true
		host.opponent.set_vel("0", "0")
		host.end_invulnerability()
		host.end_projectile_invulnerability()
		if host.opponent.hp <= 250:
			host.change_state("Shun Killed")
		else:
			host.change_state("Shun Done")

func _tick():
	._tick()
	if host.opponent.hp <= 0:
		host.opponent.hp = 1
