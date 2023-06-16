extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

signal updated_score(score)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func inc_score():
	var score = int($Label.text) + 1
	$Label.text = str(score)
	return score
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
