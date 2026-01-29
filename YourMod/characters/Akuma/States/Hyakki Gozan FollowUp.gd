extends CharacterState

func _enter():
	host.set_vel(host.get_facing_int() * host.gozanvel, 0)

func _exit():
	host.gozanvel = 0
