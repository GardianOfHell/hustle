extends CharacterState

func _frame_3():
		host.start_invulnerability()
		host.start_projectile_invulnerability()
		
func _frame_6():
		host.end_invulnerability()
		host.end_projectile_invulnerability()

func _tick():
	._tick()
	host.gozanvel += 1

