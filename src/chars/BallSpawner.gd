extends Node2D
signal ball_spawned(ball)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var Ball = preload("res://src/chars/Ball.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func spawn():
	var ball = Ball.instance()
	emit_signal('ball_spawned',ball)
	add_child(ball)
