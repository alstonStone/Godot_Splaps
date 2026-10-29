class_name Player
extends Node2D

signal slapped

var cards: Array[Card]


func take_cards(new_cards:Array[Card]) -> void:
	cards = new_cards + cards

func play_card() -> Card:
	return cards.pop_back()


func slap() -> void:
	slapped.emit()
