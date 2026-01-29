extends CharacterState

func _enter():
	if data:
		pass
	else:
		host.change_state("TwoSpinKick")
