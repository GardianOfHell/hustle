extends SuperMove


const SPEED = "11.0"
const HITBOX_OFFSET = "-28.0"

onready var hitbox = $Hitbox
onready var hitbox2 = $Hitbox
var particle_x
var particle_y

func _frame_0():
	land_cancel = false
	host.sprite.hide()
	host.LightningRake_sprite.show()

func _frame_6():
	host.reset_momentum()

	var dir = xy_to_dir(data.x, data.y, SPEED)
	var hitbox_offs = fixed.normalized_vec_times(dir.x, dir.y, HITBOX_OFFSET)
	var center = host.get_hurtbox_center()
	hitbox.dir_x = fixed.mul(hitbox_offs.x, str(host.get_facing_int()))
	hitbox.dir_y = hitbox_offs.y
	particle_x = hitbox_offs.x
	particle_y = hitbox_offs.y
	hitbox.x = fixed.round(hitbox_offs.x) * host.get_facing_int()
	hitbox.y = fixed.round(hitbox_offs.y) - 16
	host.apply_force(dir.x, dir.y)
	host.LightningRake_sprite.rotation = float(fixed.vec_to_angle(fixed.mul(dir.x, str(host.get_facing_int())), dir.y)) + TAU / 4

	land_cancel = true
	host.colliding_with_opponent = false
	
func _tick():
	host.apply_forces_no_limit()
	if current_tick > 7:
		if host.is_grounded():
			var vel = host.get_vel()
			var landing_lag = 4
			if not fixed.eq(vel.x, "0"):
				if fixed.sign(vel.x) != host.get_facing_int():
					landing_lag = 12
			queue_state_change("Landing", landing_lag)
	
func _exit():
	host.LightningRake_sprite.hide()
	host.sprite.show()
