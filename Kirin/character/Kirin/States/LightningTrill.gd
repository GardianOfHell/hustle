extends CharacterState

export var _c_drag = 0
export (bool) var drag = false
export (int) var offset_x = 0
export (int) var offset_y = 0
export (int) var end_on_tick = 1
export (int) var drag_strength = 10

#	--	Everything below is the actual script. Probably don't tinker with it unless you know what it means.

var hit_opponent = false


func _enter():
	._enter()
	hit_opponent = false

func _tick():
	._tick()
	
	if hit_opponent == true:
		if current_tick < end_on_tick:
			var pos = host.get_pos()
			var opos = host.opponent.get_pos()
			
			host.opponent.set_vel(0, 0)
			host.opponent.move_directly(str((pos.x + (offset_x * host.get_facing_int()) - opos.x) / drag_strength), str((pos.y - (offset_y + 18) - opos.y) / drag_strength))

func _on_hit_something(obj, hitbox):
	var hitpos = host.opponent.get_pos()
	._on_hit_something(obj, hitbox)
	host.set_vel(1/2*host.get_facing_int(), 3)
	
	if current_tick < end_on_tick:
		if obj == host.opponent:
			hit_opponent = true
			
			
func _frame_5(): 
	host.set_vel(5/2*host.get_facing_int(), -3)
	
	
func _frame_33(): 
	host.set_vel(30/2*host.get_facing_int(), 6)
