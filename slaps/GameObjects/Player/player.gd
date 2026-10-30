class_name Player
extends Node2D

signal slapped
# had sprite should be aroung 80x80 pixels, based off scale of the cards. 

var cards: Array[Card]
var player_id: int


func take_cards(new_cards:Array[Card]) -> void:
	cards = new_cards + cards

func play_card() -> Card:
	return cards.pop_back()


func slap() -> void:
	slapped.emit()
