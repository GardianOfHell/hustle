extends SuperMove

func _enter():
	if data:
		if data.x == 0 && data.y == 0:
			return "LightningStake"
		if data.x == 1:
			return "LightningStakeheavy"
		if data.x == -1:
			return "LightningStakeheavy"
