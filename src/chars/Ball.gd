extends RigidBody2D
class_name Ball

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_bounce(1)
	set_friction(0)

	
	pass # Replace with function body.
func _physics_process(delta):
	if global_position.x <0 or global_position.x >640:
		queue_free()
		print("Kiiled a ball")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
