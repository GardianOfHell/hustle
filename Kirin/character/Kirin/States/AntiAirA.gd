extends CharacterState


func _frame_0(): 
	host.reset_momentum()
	host.apply_force(0 * host.get_facing_int(), 0)
	
	
func _frame_4(): 
	host.reset_momentum()
	host.apply_force(-10 * host.get_facing_int(), -10)
	
	
func _frame_8(): 
	host.reset_momentum()
	host.apply_force(140 * host.get_facing_int(), 200)

func _frame_15():
	host.set_vel(50*host.get_facing_int(), 50)
