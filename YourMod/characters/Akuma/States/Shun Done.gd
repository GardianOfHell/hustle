extends CharacterState

func _enter():
	if state_name == "Shun Killed":
		host.opponent.hp = 1

func _frame_3():
	if state_name == "Shun Killed":
		host.opponent.hitlag_ticks = 9999

func _frame_120():
	if state_name == "Shun Killed":
		host.opponent.hp = 0
