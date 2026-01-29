extends SuperMove

func _frame_7():
	host.change_state("Zanku Hadoken EX2")

func _tick():
	._tick()
	host.create_speed_after_image("#00008B")
