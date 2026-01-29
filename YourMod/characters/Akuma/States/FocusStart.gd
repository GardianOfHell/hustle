extends CharacterState

func _enter():
	$"%FocusEffect".start_emitting()

func _frame_5():
		host.has_hyper_armor = true

func _tick():
#// This takes every currently-active opponent hitbox and saves them for a bit
	var opp_hitboxes = host.opponent.get_active_hitboxes()
	#//This checks every saved hitbox in the variable for the following conditions : "Am I invulnerable? Am I using the counter move? Are they NOT using a throw? Are they hitting me at all?
	for hitbox in opp_hitboxes:
		if host.has_hyper_armor == true && host.current_state().state_name == "FocusStart" && (hitbox.throw != true) && (hitbox.overlaps(host.hurtbox)):
		#// This freezes them in place for a bit. Not required
			host.opponent.hitlag_ticks = 7
		#// This changes you to the counter follow-up state
			host.change_state("FocusStart2")

func _exit():
	$"%FocusEffect".stop_emitting()
