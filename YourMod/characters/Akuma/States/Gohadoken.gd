extends CharacterState

func _enter():
	if data:
		host.change_state("Shakunetsu")
	else:
		pass
