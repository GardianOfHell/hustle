extends CharacterState

func _enter():
	if host.initiative and host.is_grounded():
		host.start_projectile_invulnerability()
	$"%TatsuEffect".start_emitting()

func _exit():
	$"%TatsuEffect".stop_emitting()
