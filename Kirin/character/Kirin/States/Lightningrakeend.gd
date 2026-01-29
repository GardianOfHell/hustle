extends CharacterState

func _frame_0():
		host.start_invulnerability()
		var opp_pos = host.opponent.get_pos()
		host.set_pos(opp_pos.x +0,opp_pos.y -42)
func _frame_1():
		var opp_pos = host.opponent.get_pos()
		host.set_pos(opp_pos.x +0,opp_pos.y -40)
func _frame_2():
		var opp_pos = host.opponent.get_pos()
		host.set_pos(opp_pos.x +0,opp_pos.y -38)
func _frame_3():
		var opp_pos = host.opponent.get_pos()
		host.set_pos(opp_pos.x +0,opp_pos.y -42)
func _frame_4():
		var opp_pos = host.opponent.get_pos()
		host.set_pos(opp_pos.x +0,opp_pos.y -42)
		host.reset_momentum()
