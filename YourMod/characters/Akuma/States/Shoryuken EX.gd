extends SuperMove

func _frame_0():
		host.start_invulnerability()
		host.start_projectile_invulnerability()
		$"%ShoryukenEffect".start_emitting()
func _frame_18():
	host.change_state("Shoryuken EX 2")

func _tick():
	._tick()
	host.create_speed_after_image("#00008B")
