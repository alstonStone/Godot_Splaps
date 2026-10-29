class_name Deck
extends Node2D


var current_deck: Array[Card]
const CARD = preload("res://GameObjects/Card/card.tscn")





# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	global_position = Vector2(100,100)
	#add_card_to_current_deck(create_card(Card.Suit.HEART, 10))
	current_deck = create_deck_of_cards()
	print_current_deck()
	for c: Card in current_deck:
		add_child(c)
	display_deck_fanned()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func display_deck_fanned() -> void:
	var card_x_offset := 10
	var c_count := 0
	for c: Card in current_deck:
		c.global_position+= Vector2(card_x_offset*c_count,100)
		c_count+=1

func create_deck_of_cards() -> Array[Card]:
	var new_deck: Array[Card]
	for s: int in range(4):
		for v: int in range(13):
			new_deck.append(create_card(s as Card.Suit,v+1))
	return new_deck



func create_card(s: Card.Suit, v: int) -> Card:
	var new_card: Card = CARD.instantiate() as Card
	new_card.setup_card(s,v)
	return new_card

func add_card_to_current_deck(c: Card) -> void:
	current_deck.append(c)
	pass

func print_current_deck() -> void:
	print(current_deck)
