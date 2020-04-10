extends KinematicBody

var input : InputStructure

# Run on initialization
func _ready() -> void:
	input = InputStructure.new()
	
# Run every frame
func _process(delta) -> void:
	input.poll()
	
# Run every tick
func _physics_process(delta) -> void:
	pass
