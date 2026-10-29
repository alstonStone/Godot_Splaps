class_name Card
extends Node2D



enum Suit{SPADE,HEART,DIAMOND,CLUB}
@export var suit: Suit
var value : int
var suit_symbol:String
var value_symbol:String

func setup_card(s: Suit, v:int) -> void:
	suit = s
	value = v
	set_symbols()
	set_sprites()

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
			suit_symbol = "♠"
		1:
			suit_symbol = "♥"
		2:
			suit_symbol = "♦"
		3:
			suit_symbol = "♣"
		_:
			suit_symbol = "?"


func set_sprites() -> void:
	
	pass


func _to_string() -> String:
	return(value_symbol+suit_symbol)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
