extends ThrowState

func _tick():
	if host.is_grounded():
		host.change_state("MisogiGrounded")
