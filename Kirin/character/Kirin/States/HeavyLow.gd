extends CharacterState

var got_hit = false

func _frame_12():
	if not got_hit:
		host.has_hyper_armor = true
	host.start_projectile_invulnerability()

func _frame_22():
	host.has_hyper_armor = false
	host.end_projectile_invulnerability()
