extends SuperMove



const PROJECTILE_X = 20
const PROJECTILE_Y = - -9

func _frame_25():
	var dir = xy_to_dir(data["x"], data["y"])
	var obj = host.spawn_object(preload("res://Kirin/character/Kirin/Projectiles/GrandBolt.tscn"), PROJECTILE_X, PROJECTILE_Y, true, {"dir":dir})
