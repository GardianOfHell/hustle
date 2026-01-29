extends SuperMove

func _frame_0():
		host.start_projectile_invulnerability()
		$"%TatsuEffect".start_emitting()

func _frame_46():
	host.change_state("Hurricane EX Finisher")
	$"%TatsuEffect".stop_emitting()

func _tick():
	._tick()
	host.create_speed_after_image("#00008B")
