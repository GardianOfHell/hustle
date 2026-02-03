extends CharacterState

export var _c_SimpleProjectile = 0
export (PackedScene) var ProjectileScene
export var projPosX = 32
export var projPosY = -10
export var static_x_dir = 1
export var static_y_dir = 0
export var Spawn_Tick = 7
export var Speed = 30
export var lifetime = 100


func _tick():
	if current_tick == Spawn_Tick:	
		var dir_data = null
		if data != null:
			dir_data = {"dir":xy_to_dir(data.x, data.y),"speed":Speed,"lifetime":lifetime}
		else:
			dir_data = {"dir":xy_to_dir(static_x_dir * host.get_facing_int(), static_y_dir),"speed":Speed,"lifetime":lifetime}	
				
		host.spawn_object(ProjectileScene, projPosX, projPosY, true, dir_data)
	
	
