extends CharacterState

func _frame_0():
	if host.initiative and host.current_state().state_name == "ShoryukenGround" && host.is_grounded():
		host.has_hyper_armor = true
		host.start_invulnerability()
		if host.combo_count > 0 && host.opponent.bursts_available <= 0 :
			host.change_state("ShoryukenInitiative")
		else:
			host.start_projectile_invulnerability()
	$"%ShoryukenEffect".start_emitting()
func _frame_3():
	host.end_invulnerability()
func _frame_7():
		host.has_hyper_armor = false
		host.end_projectile_invulnerability()

func _frame_12():
		$"%ShoryukenEffect".stop_emitting()

func _tick():
	._tick()
	if host.current_state().state_name == "Shoryuken EX 2":
		host.create_speed_after_image("#00008B")
