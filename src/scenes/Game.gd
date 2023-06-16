extends Node2D

export var target = 5

onready var player1ScoreWall = $PlayGround/ScoreWall
onready var player2ScoreWall = $PlayGround/ScoreWall2

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	player1ScoreWall.connect('score',self,'_on_scored')
	player2ScoreWall.connect('score',self,'_on_scored')
	
	pass # Replace with function body.
func _on_scored(player):
	print(player, 'from Scored')
	var score = get_node("HUD" + player).inc_score()
	print(score)
	$PlayGround.reset()
	
	if score == target:
		declare_winner(player)
func declare_winner(player):
	remove_child($PlayGround)
	$Winner/Label.text = player + " Wins !!"
	$Winner.show()
	
