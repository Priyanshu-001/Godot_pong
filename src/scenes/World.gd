extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var ballSpawner = $BallSpawner
# Called when the node enters scene tree for the first time.
func _ready():
	
	reset()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func reset():
	$BallSpawner.spawn()
	
