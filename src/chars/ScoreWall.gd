extends Area2D

export var player = 'player1'
signal score(player)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.'
#func _process(delta):
#	pass


func _on_ScoreWall_body_entered(body):
	if body is Ball:
		emit_signal('score',player)
	
	pass # Replace with function body.

 # Replace with function body.
