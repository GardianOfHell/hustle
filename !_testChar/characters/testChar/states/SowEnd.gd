extends ThrowState

const NO_COMBO_DAMAGE = 250

onready var no_combo_hitbox = $NoComboHitbox
onready var hitbox = $Hitbox

var is_in_combo = false

var sprite_throw_positions = [
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[70, -58],
	[60, -37],
	[60, -37],
	[60, -37],
	[60, -37],
	[60, -37],
	[60, -37],
	[60, -37],
	[60, -37],
	[60, -37],
	[60, -37],
	[60, -37],
	[60, -37],
	[-52, 8],
	[-52, 8],
	[-52, 8],
	[-52, 8],
	[-52, 8],
	[-52, 8],
	[-52, 8],
	[-52, 8],
	[-52, 8],
	[-52, 8],
	[-52, 8],
	[-52, 8],
	[-52, 8],
	[-52, 8],
	[-52, 8],
	[-52, 8],


]

func update_throw_position():
	var current_frame = host.get_current_sprite_frame_number() - 3
	if not released:
		if sprite_throw_positions.size() > current_frame:
			host.throw_pos_x = sprite_throw_positions[current_frame][0] 
			host.throw_pos_y = sprite_throw_positions[current_frame][1] 
			print(sprite_throw_positions.size() , "and" , current_frame)
		else:
			print(sprite_throw_positions.size() , "and" , current_frame)
			

func _frame_0():
	host.opponent.z_index = - 1
	is_in_combo = host.combo_count != 0

func _frame_17():
	ground_slam()

func _frame_33():
	ground_slam()
	
func _frame_18():
	host.play_sound("ElectroBurst")

func ground_slam():
	var pos = particle_position
	pos.x *= -host.get_facing_int()

	if not is_in_combo:
		no_combo_hitbox.hit(host.opponent)
	else :
		hitbox.hit(host.opponent)


	no_combo_hitbox.deactivate()
	hitbox.deactivate()
	var camera = host.get_camera()
	if camera:
		camera.bump(Vector2.UP, 20, 20 / 60.0)
		

func _tick():
	update_throw_position()

func _exit():
	is_in_combo = false
