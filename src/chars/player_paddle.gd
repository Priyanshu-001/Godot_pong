extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed : int  = 200
export var player = 'player1'

# Called when the node enters the scene tree for the first time.
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if Input.is_action_pressed(player+'-up'):
		position.y -=speed*delta
		print('Up')
	elif Input.is_action_pressed(player+'-down'):
		position.y +=speed*delta
	else:
		pass
	
