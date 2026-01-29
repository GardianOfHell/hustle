extends SuperMove

#// This makes sure you're invulnerable during the followup
func _frame_0():
		host.start_invulnerability()
		host.start_projectile_invulnerability()
#// This turns off your invulnerability after you do the followup
func _frame_10():
	host.end_invulnerability()
	host.end_projectile_invulnerability()

#// This part makes sure you delete all hitboxes that collide with you during the followup. If your counter is invulnerable for the full follow-up, you don't need this block and can safely remove it (I think)
func _tick():
	._tick()
	host.create_speed_after_image("#00008B")
	
	var opp_hitboxes = host.opponent.get_active_hitboxes()
	
	for hitbox in opp_hitboxes:
		if host.invulnerable && host.current_state().state_name == "FocusSuccess2" && (hitbox.throw != true) && (hitbox.overlaps(host.hurtbox)):
			hitbox.deactivate()
