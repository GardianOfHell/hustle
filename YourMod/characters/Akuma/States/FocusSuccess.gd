extends CharacterState

func _tick():
	var opp_hitboxes = host.opponent.get_active_hitboxes()
	
	for hitbox in opp_hitboxes:
		if host.invulnerable && host.current_state().state_name == "FocusSuccessStrong" && (hitbox.throw != true) && (hitbox.overlaps(host.hurtbox)):
			hitbox.deactivate()
