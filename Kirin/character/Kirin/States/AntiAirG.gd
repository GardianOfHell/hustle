extends CharacterState

func _frame_2(): 
	host.set_vel(-4 * host.get_facing_int(), -8)


func _frame_7(): 
	host.set_vel(35 * host.get_facing_int(), 0)
	host.reset_momentum()

func _frame_12(): 
	host.set_vel(35 * host.get_facing_int(), 40)
	host.reset_momentum()

func _frame_15():
	host.set_vel(50*host.get_facing_int(), 50)
