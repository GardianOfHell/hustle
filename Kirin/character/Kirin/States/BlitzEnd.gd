extends ThrowState

const NO_COMBO_DAMAGE = 250

onready var no_combo_hitbox = $NoComboHitbox
onready var hitbox = $Hitbox

var is_in_combo = false

var sprite_throw_positions = [
	[189, -33],
	[189, -33],
	[189, -33],
	[189, -33],
	[189, -33],
	[189, -33],
	[189, -33],
	[164, -30],
	[164, -30],
	[164, -30],
	[164, -30],
	[164, -30],
	[164, -30],
	[164, -30],
	[164, -30],
	[164, -30],
	[164, -30],
	[164, -30],
	[110, -5],
	[110, -5],
	[110, -5],
	[110, -5],
	[110, -5],
	[110, -5],
	[110, -5],
	[110, -5],
	[110, -5],
	[110, -5],
	[110, -5],
	[17, -0],
	[17, -0],
	[17, -0],
	[17, -0],
	[17, -0],
	[17, -0],
	[17, -0],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],
	[8, 22],

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
	
func _frame_11():
	host.play_sound("ElectroCombo1")
	

func _frame_12():
	ground_slam()
	
func _frame_17():
	host.play_sound("ElectroCombo2")

func _frame_18():
	ground_slam()
	
func _frame_23():
	host.play_sound("ElectroCombo2")
	

func _frame_24():
	ground_slam()
	
func _frame_35():
	host.play_sound("ElectroCombo5")
	
func _frame_36():
	ground_slam()
	
func _frame_51():
	host.play_sound("ElectroCombo4")
	
func _frame_52():
	ground_slam()
	
func _frame_77():
	host.play_sound("ElectroBurst")
	
func _frame_78():
	ground_slam()
	
func _frame_107():
	host.play_sound("ScytheLand")
	
func _frame_113():
	host.play_sound("ElectroFinalHit")
	
func _frame_114():
	ground_slam()
	
func ground_slam():
	var pos = particle_position
	pos.x *= -host.get_facing_int()

	if not is_in_combo:
		no_combo_hitbox.hit(host.opponent)
	else :
		hitbox.hit(host.opponent)


	no_combo_hitbox.deactivate()
	hitbox.deactivate()
		

func _tick():
	update_throw_position()

func _exit():
	is_in_combo = false
