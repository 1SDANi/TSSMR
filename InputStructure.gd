class_name InputStructure

# Controls player movement
var vMoveStick : Vector2 setget ,get_move_stick

# Controls camera movement
var vLookStick : Vector2 setget ,get_look_stick

# Jump Button - Ground: Jump | Air: Double Jump
var bJumpButton : bool setget ,get_jump_button

# Attack - Bob: Karate Spin/Karate Spin | Pat: Belly Slap/Head Bash
var bAttackButton : bool setget ,get_attack_button

# High Special - Bob: Boxing Glove/Parachute | Pat: Lick/Lick 
var bHighSpecialButton : bool setget ,get_high_special_button

# Low Special - Bob: Bowl/Boots | Pat: Lift|Slam
var bLowSpecialButton : bool setget ,get_low_special_button

# Super - Bob: Guitar | Pat: Self Throw
var fSuperTrigger : float setget ,get_super_trigger

# Binds the mouse cursor to the center of the screen and hides it
var bBindMouse : bool setget set_bind_mouse,get_bind_mouse 

# On Initialization
func _init():
	vMoveStick = Vector2.ZERO
	vLookStick = Vector2.ZERO
	bJumpButton = false
	bAttackButton = false
	bHighSpecialButton = false
	bLowSpecialButton = false
	fSuperTrigger = 0.0
	
# Call to update variables. Preferable once every tick.
func poll():
	pass
	
# Bound to a Getter
func get_move_stick() -> Vector2:
	return vMoveStick
	
# Bound to a Getter
func get_look_stick() -> Vector2:
	return vLookStick
	
# Bound to a Getter
func get_jump_button() -> bool:
	return bJumpButton
	
# Bound to a Getter
func get_attack_button() -> bool:
	return bAttackButton
	
# Bound to a Getter
func get_high_special_button() -> bool:
	return bHighSpecialButton
	
# Bound to a Getter
func get_low_special_button() -> bool:
	return bLowSpecialButton
	
# Bound to a Getter
func get_super_trigger() -> float:
	return fSuperTrigger
	
func set_bind_mouse(bNewValue : bool) -> void:
	bBindMouse = bNewValue
	
func get_bind_mouse() -> bool:
	return bBindMouse