class_name Card
extends Node2D



@onready var front_sprite: Sprite2D = $FrontSprite

enum Suit{HEART,SPADE,DIAMOND,CLUB}
@export var suit: Suit
var value : int
var suit_symbol:String
var value_symbol:String


func _ready() -> void:
	set_front_sprite()
	pass





func setup_card(s: Suit, v:int) -> void:
	suit = s
	value = v
	set_symbols()
	

func set_symbols() -> void:
	match value:
		1:
			value_symbol="A"
		11:
			value_symbol="J"
		12:
			value_symbol="Q"
		13:
			value_symbol="K"
		_:
			value_symbol = str(value)
	match suit:
		0:
			suit_symbol = "♥"
		1:
			suit_symbol = "♠"
		2:
			suit_symbol = "♦"
		3:
			suit_symbol = "♣"
		_:
			suit_symbol = "?"


func set_front_sprite() -> void:
	var x_frame := value-2
	if value == 1:
		x_frame = 12
	var y_frame:= suit+1 #first row of sprite sheet is card backs
	front_sprite.frame_coords = Vector2i(x_frame,y_frame)
	pass


func _to_string() -> String:
	return(value_symbol+suit_symbol)

# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
