extends Node

func register(codex):
	codex.set_subtitle("Demon Beyond Reason")
	codex.set_summary("""A glass cannon shoto with a mix of rushdown.
	He lacks range and has a naturally bad neutral, but his Gohadoken can easen the load of footsies.
	
	Kuroi has a 1.3x damage modifier, to offset a very high strength, his attacks do not lose all their damage in combos. He also has just generally high damage output.
	This means getting in is key; more often than not you're guaranteed a high damaging combo.
	
	His grounded HeavyPunch, and all his grounded kicks have a Close variant, where the move will change it's properties. Usually, it turns the move faster, or actionable sooner, but sometimes it just changes to fit a different situation.
	
	Kuroi can perform a Chain Combo, Medium attacks cancel into Heavies, and Heavies can cancel into Specials or Supers.
	This is an easy way to combo, but note that the opponent can DI, and not every attack will hit, or even cancel.
	
	He has tons of EX moves, one for almost every special. They are powerful, quick, and generally invincible.
	Though, Kuroi has slightly terrible meter gain. You might want to save up 3 bars for a powerful finisher.
	Knowing when to use them is a good part in playing Kuroi.
	""")
	
	codex.moveset["CrouchingHeavy"].visible = true
	codex.moveset["StandingLow"].visible = true
	codex.moveset["FarReachingKick"].visible = true
	codex.moveset["TwoSpinKick"].visible = true
	
	codex.moveset["LowKick"].desc = "Has no friction."
	codex.moveset["Shun Goku Satsu Start"].desc = "Kills the opponent if the attack leaves them at 200 hp or below. Has starting hitstun, so it's true hitbox frame is around ~4 or ~5."
	codex.moveset["Hyakki Gozan"].desc = "Goes farther the longer the move is in the air."
	codex.moveset["AirGrab"].desc = "This move can throw grounded opponents."
	codex.moveset["ShoryukenGround"].desc = "Cancellable if currently in a combo, in initative, and the opponent does not have a burst."
	codex.moveset["FocusStart"].desc = "When fully charged, this move cannot be blocked."
