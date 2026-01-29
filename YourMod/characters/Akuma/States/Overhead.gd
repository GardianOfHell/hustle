extends CharacterState

func _enter():
	if data:
		host.change_state("CrouchingHeavy")
	else:
		pass


func _frame_5():
		host.has_hyper_armor = true

